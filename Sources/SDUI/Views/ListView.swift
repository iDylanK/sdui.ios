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
        
        List {
            if let header = self.state.screen?.header, header.scrollable {
                HeaderView(header: header).listRowSeparator(.hidden)
            }
            ForEach(sections, id: \.self) { section in
                if let header = section.title {
                    Section(header: Text(header)) {
                       ListViewSection(section: section)
                    }
                } else {
                    Section() {
                       ListViewSection(section: section)
                    }
                }
            }
        }.listStyle(InsetGroupedListStyle())
        
    }
    
    private struct ListViewSection: View {
        @EnvironmentObject var state: SDUIState
        
        var section: SDUISection

        var body: some View {
            ForEach(section.components  ?? [], id: \.id) { component in
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
}
