//
//  SwiftUIView.swift
//  
//
//  Created by Dylan on 19/05/2022.
//

import SwiftUI

/// Component View calling the component delegate's view function to render
/// custom project components or renders the content of a component when
/// it's just a basic component (known to the Library).
struct ComponentView: View {
    /// The component to render.
    var component: SDUIComponent

    var body: some View {
        if let component = component.custom() {
            ServerDrivenUI.shared.componentDelegate?.view(for: component)
        } else if let component = component.basic() {
            Text(component.content)
        }
    }
}
