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
            Button(action: {
                switch cell.action?.type {
                case .alert: state.alert = cell.action
                case .sheet: state.sheet = cell.action
                case .none: state.sheet = nil
                }

            }) {
                ForEach(cell.components ?? [], id: \.self) { component in
                    ComponentView(component: component)
                }
            }
        }
    }
}
