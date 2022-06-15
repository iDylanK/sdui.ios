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
        VStack {
            if let components = self.section.components {
                ForEach(components.search(value: self.state.search), id: \.id) { component in
                    ComponentView(component: component)
                }
            }
        }
    }
}
