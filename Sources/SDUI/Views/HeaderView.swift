//
//  HeaderView.swift
//  sdui (iOS)
//
//  Created by Dylan on 20/04/2022.
//

import SwiftUI

struct HeaderView: View {
    var header: SDUIHeader

    var body: some View {
        ServerDrivenUI.shared.delegate?.headerView(header)
    }
}
