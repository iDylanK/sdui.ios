//
//  SDUIView.swift
//  SDUI (iOS)
//
//  Created by Dylan on 10/04/2022.
//

import SwiftUI

public struct SDUIRootView: View {
    @StateObject var state = SDUIState()
    
    var viewUrl: String?
    
    public init() {}
    
    public init(viewUrl: String?) {
        self.viewUrl = viewUrl
    }
        
    public var body: some View {
        if self.state.isLoading  {
            ProgressView().onAppear {
                self.state.getView(viewUrl: viewUrl)
            }
        } else {
            ScreenView()
                .if(self.state.screen?.view?.refreshable ?? false, transform: { view in
                    view.refreshable(action: {
                        self.state.getView()
                    })
                })
                .environmentObject(state)
                .navigationViewStyle(.stack)
                .navigationBarTitle(self.state.screen?.navigationView?.title ?? "", displayMode:
                        .sdui(self.state.screen?.navigationView?.displayMode))
        }
    }
    
}
