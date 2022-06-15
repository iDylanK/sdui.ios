//
//  ListSectionView.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import SwiftUI

struct ListSectionView: View {
    @EnvironmentObject var state: SDUIState
    
    var section: SDUISection

    var body: some View {
        ForEach((section.components ?? []).search(value: self.state.search), id: \.id) { component in
            if component.action?.type == .navigationLink {
                NavigationLink(destination: SDUIRootView(viewUrl: component.action?.url)) {
                    ComponentView(component: component)
                }
            } else {
                Button(action: {
                    switch component.action?.type {
                        case .alert: state.alert = component.action
                        case .sheet: state.sheet = component.action
                        default: state.sheet = nil; state.alert = nil
                    }
                }) {
                    ComponentView(component: component)
                }
            }
        }
    }
}
