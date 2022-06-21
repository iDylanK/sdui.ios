//
//  ListView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var state: SDUIState

    var body: some View {

        List {
            HeaderView(scrollable: true).listRowSeparator(.hidden).buttonStyle(.plain)

            ForEach(state.sections ?? [], id: \.self) { section in
                if let header = section.title {
                    Section(header: Text(header)) {
                        SectionView(section: section)
                    }
                } else {
                    Section {
                        SectionView(section: section)
                    }
                }
            }
        }.listStyle(InsetGroupedListStyle())

    }
}
