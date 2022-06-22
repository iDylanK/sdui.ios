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
            ServerDrivenUI.shared.componentDelegate?.view(for: component, with: component.base.action?.custom())
        } else if let component = component.basic() {
            Text(component.content)
        }
    }
}
