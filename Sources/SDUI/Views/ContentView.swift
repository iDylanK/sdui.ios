//
//  ScreenBodyView.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var state: SDUIState
    
    var sections: [SDUISection]
    
    var body: some View {
        if let header = self.state.screen?.header, header.scrollable, header.decoded != nil {
            HeaderView(header: header)
        }
        ForEach(sections.search(value: self.state.search), id: \.self) { section in
            SectionView(section: section).frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}
