//
//  RootView.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import SwiftUI

struct RootView: View {
    @StateObject var state = SDUIState()
    
    var viewUrl: String?
    
    var body: some View {
        if self.state.isLoading  {
            ProgressView().onAppear {
                self.state.getView(viewUrl: viewUrl)
            }
        } else {
            ScreenView()
                .if(self.state.screen?.content?.searchable ?? false, transform: { view in
                    view.searchable(text: $state.search, prompt: "Zoek")
                })
                .if(self.state.screen?.content?.refreshable ?? false, transform: { view in
                    view.refreshable(action: {
                        self.state.getView()
                    })
                })
                .environmentObject(state)
                .navigationViewStyle(.stack)
                .navigationBarTitle(self.state.screen?.header?.title ?? "", displayMode:
                        .sdui(self.state.screen?.header?.displayMode))
        }
    }
}
