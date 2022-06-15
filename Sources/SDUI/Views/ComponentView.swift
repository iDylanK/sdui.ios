//
//  SwiftUIView.swift
//  
//
//  Created by Dylan on 19/05/2022.
//

import SwiftUI

struct ComponentView: View {
    var component: SDUIComponent

    var body: some View {
        ServerDrivenUI.shared.delegate?.componentView(component)
    }
}
