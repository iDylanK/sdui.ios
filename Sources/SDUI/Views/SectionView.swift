//
//  SwiftUIView.swift
//  
//
//  Created by Dylan on 18/05/2022.
//

import SwiftUI

struct SectionView: View {
    @EnvironmentObject var state: SDUIState

    var section: SDUISection

    var body: some View {
        ForEach((section.components ?? []).search(value: self.state.search), id: \.id) { component in
            if case .navigationLink(let navigationLink) = component.action {
                NavigationLink(destination: SDUIRootView(viewUrl: navigationLink.url)) {
                    ComponentView(component: component)
                }
            } else {
                if component.action != nil {
                    Button {
                        switch component.action {
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

}
