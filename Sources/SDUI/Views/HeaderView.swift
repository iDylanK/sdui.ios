//
//  HeaderView.swift
//  sdui (iOS)
//
//  Created by Dylan on 20/04/2022.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var state: SDUIState

    var scrollable: Bool

    var body: some View {
        if let header = self.state.screen?.header?.custom(), header.base.scrollable == scrollable {
            ServerDrivenUI.shared.delegate?.headerView(header)
        }
    }
}
