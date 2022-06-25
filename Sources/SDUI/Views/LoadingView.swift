//
//  LoadingView.swift
//  sdui (iOS)
//
//  Created by Dylan on 08/04/2022.
//

import SwiftUI

/// Current default Loading View only displaying a ProgressView.
struct LoadingView: View {
    @EnvironmentObject var state: SDUIState

    /// Url where to fetch Screen information from.
    var viewUrl: String?
    /// PlaceHolder to be set as a Header when the content is being fetched.
    var placeHolder: SDUIPlaceHolder?

    var body: some View {
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
    }
}
