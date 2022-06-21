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
        if let component = component.custom() {
            ServerDrivenUI.shared.delegate?.componentView(component, action: component.base.action?.custom())
        }
    }
}
