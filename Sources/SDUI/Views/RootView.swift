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
    var placeHolder: SDUIPlaceHolder?

    var body: some View {
        if self.state.isLoading {
            if let placeHolder = placeHolder {
                VStack {
                    ServerDrivenUI.shared.placeHolderDelegate?.view(for: placeHolder).onAppear {
                        self.state.getView(viewUrl: viewUrl)
                    }
                    Spacer()
                }
            } else {
                ProgressView().onAppear {
                    self.state.getView(viewUrl: viewUrl)
                }
            }
        } else {
            ScreenView()
                .if(self.state.screen?.content?.searchable ?? false) { view in
                    view
                        .searchable(text: $state.search, prompt: "Zoek")
                        .onChange(of: state.search) { _ in
                            state.searchSections()
                        }
                }
                .if(self.state.screen?.content?.refreshable ?? false) { view in
                    view.refreshable {
                        self.state.getView()
                    }
                }
                .if(self.state.screen?.header?.base().action?.share() != nil) { view in
                    view.toolbar {
                        Button {
                            self.state.share = self.state.screen?.header?.base().action?.share()
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                .environmentObject(state)
                .navigationViewStyle(.stack)
                .navigationBarTitle(self.state.screen?.header?.base().title ?? "", displayMode:
                    .sdui(self.state.screen?.header?.base().displayMode))
        }
    }
}
