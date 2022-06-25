//
//  RootView.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import SwiftUI

/// The Root View taking care of setting up everything
/// before the actual SDUI View can be called. This view is responsible for:
/// - Showing a PlaceHolder when set or showing the LoadingView.
/// - Adding a searchbar.
/// - Adding a pull to refresh and connecting the reloading of the screen.
/// - Adding a share navigation button when a Library share action is set.
struct RootView: View {
    @StateObject var state = SDUIState()

    /// Url where to fetch Screen information from.
    var viewUrl: String?
    /// PlaceHolder to be set as a Header when the content is being fetched.
    var placeHolder: SDUIPlaceHolder?

    var body: some View {
        if self.state.isLoading {
            LoadingView(viewUrl: viewUrl, placeHolder: placeHolder)
                .environmentObject(state)
        } else {
            ScreenView()
                // Searchable
                .if(self.state.screen?.content?.searchable ?? false) { view in
                    view
                        .searchable(text: $state.search, prompt: "Zoek")
                        .onChange(of: state.search) { _ in
                            state.searchSections()
                        }
                }
                // Refreshable
                .if(self.state.screen?.content?.refreshable ?? false) { view in
                    view.refreshable {
                        self.state.getView()
                    }
                }
                // Share button in Navgation Toolbar
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
