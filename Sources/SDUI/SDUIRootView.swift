//
//  SDUIView.swift
//  SDUI (iOS)
//
//  Created by Dylan on 10/04/2022.
//

import SwiftUI

public struct SDUIRootView: View {
    @State var screen: SDUIScreen?
    @State var navigationView: SDUINavigationView?
    @State var isLoading: Bool = true
    @StateObject var state = SDUIState()
    
    var viewUrl: String?
    
    public init() {}
    
    public init(viewUrl: String?) {
        self.viewUrl = viewUrl
    }
        
    public var body: some View {
        if self.isLoading  {
            ProgressView().onAppear {
                self.getView()
            }
        } else {
            if let navigationView = navigationView {
                NavigationView {
                    ScreenView(screen: self.screen!)
                        .environmentObject(state)
                        .navigationTitle(navigationView.title)
                }.if(self.navigationView?.refreshable ?? false, transform: { view in
                    view.refreshable(action: {
                        self.getView()
                    })
                }).navigationViewStyle(.stack)
            } else {
                ScreenView(screen: self.screen!) // TODO: bad practise '!'
                    .environmentObject(state)
            }
        }
    }
    
    private func getView() {
        SDUI.shared.delegate?.getViewWith(uri: viewUrl, data: nil, completion: { screen in
            DispatchQueue.main.async {
                self.screen = screen
                self.navigationView = screen.navigationView
                self.isLoading = false
            }
        })
    }

}

//struct SDUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SDUIView()
//    }
//}

