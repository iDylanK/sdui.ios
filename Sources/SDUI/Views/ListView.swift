//
//  ListView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var state: SDUIState

    var sections: [SDUISection]
    
    var body: some View {
        List(sections[0].components ?? [], id: \.id) { component in
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
//            ComponentView(component: component.content!)
        }
        
    }
    
//    private struct ListViewCell: View {
//        var component: JSONAny
//
//        var body: some View {
//            ForEach(cell.components ?? [], id: \.self) { component in
//                ComponentView(component: component)
//            }
//        }
//    }
}
