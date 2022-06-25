//
//  SwiftUIView.swift
//  
//
//  Created by Dylan on 18/05/2022.
//

import SwiftUI

/// View that takes care of looping over all sections and calling
/// the ComponentView for every one of them.
struct SectionView: View {
    @EnvironmentObject var state: SDUIState

    /// The section to render.
    var section: SDUISection

    var body: some View {
        ForEach(section.components ?? [], id: \.hashValue) { component in
            // Check if a NavigationLink library action is connected by casting it to a base component.
            // If there is an action the component is wrapped inside a Button.
            if case .navigationLink(let navigationLink) = component.base().action {
                NavigationLink(
                    destination: SDUIRootView(viewUrl: navigationLink.url, placeHolder: navigationLink.placeHolder)
                ) {
                    ComponentView(component: component)
                }
            } else if component.base().action != nil {
                // Here the component is potentially wrapped into
                // a button to support more actions than only a NavigationLink.
                Button {
                    switch component.base().action {
                    case .alert(let alert): state.alert = alert
                    case .sheet(let sheet): state.sheet = sheet
                    case .share(let share): state.share = share
                    default: break
                    }
                } label: {
                    ComponentView(component: component)
                }
            } else {
                ComponentView(component: component)
            }
        }
    }

}
