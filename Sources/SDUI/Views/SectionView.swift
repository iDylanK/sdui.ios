//
//  SwiftUIView.swift
//  
//
//  Created by Dylan on 18/05/2022.
//

import SwiftUI

struct SectionView: View {
    @EnvironmentObject var state: SDUIState
    @EnvironmentObject var sduiState: SDUIState

    var section: SDUISection

    var body: some View {
        ForEach(section.components ?? [], id: \.hashValue) { component in
            if case .navigationLink(let navigationLink) = component.base().action {
                NavigationLink(
                    destination: SDUIRootView(viewUrl: navigationLink.url, placeHolder: navigationLink.placeHolder)
                ) {
                    ComponentView(component: component)
                }
            } else if component.base().action != nil {
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
