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
        Spacer().frame(height: 20)
        ServerDrivenUI.shared.delegate?.headerView(header)
        Spacer().frame(height: 20)
        Divider()
    }
}
