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
            if let header = self.state.screen?.header, header.scrollable, header.decoded != nil {
                HeaderView(header: header).listRowSeparator(.hidden)
            }
            ForEach(sections.search(value: self.state.search), id: \.self) { section in
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
