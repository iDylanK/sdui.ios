//
//  HeaderView.swift
//  sdui (iOS)
//
//  Created by Dylan on 20/04/2022.
//

import SwiftUI

/// Header View calling the header delegate's view function to render
/// custom project headers. Only does so in case it's a custom header.
/// Main Library headers only support settings navigation titles.
/// The header is only displayed at the correct locations (to make it
/// scrollable or not, depending on the screen data).
struct HeaderView: View {
    @EnvironmentObject var state: SDUIState

    /// The SDUIView tells this HeaderView if it is currently at a position
    /// that would make the haeder scrolalble. This way the header
    /// is only shown when it matches the headers scroll settings.
    var scrollable: Bool

    var body: some View {
        if let header = self.state.screen?.header?.custom(), header.base.scrollable == scrollable {
            ServerDrivenUI.shared.headerDelegate?.view(for: header)
        }
    }
}
