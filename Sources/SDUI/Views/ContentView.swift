//
//  ScreenBodyView.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var state: SDUIState

    var body: some View {
        HeaderView(scrollable: true)
        ForEach(self.state.sections ?? [], id: \.self) { section in
            SectionView(section: section).frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}
