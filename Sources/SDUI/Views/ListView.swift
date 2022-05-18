//
//  ListView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var state: SDUIState

    var list: SDUIList
    
    var body: some View {
        List(list.cells, id: \.id) { cell in
            if cell.action?.type == .navigationLink {
                NavigationLink(destination: SDUIRootView(viewUrl: cell.action?.url)) {
                    ListViewCell(cell: cell)
                }
            } else {
                Button(action: {
                    switch cell.action?.type {
                        case .alert: state.alert = cell.action
                        case .sheet: state.sheet = cell.action
                        default: state.sheet = nil; state.alert = nil
                    }
                }) {
                    ListViewCell(cell: cell)
                }
            }
        }
    }
    
    private struct ListViewCell: View {
        var cell: SDUICell
        
        var body: some View {
            ForEach(cell.components ?? [], id: \.self) { component in
                ComponentView(component: component)
            }
        }
    }
}
