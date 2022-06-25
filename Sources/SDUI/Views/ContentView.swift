//
//  ScreenBodyView.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import SwiftUI

/// This view represents one of the main Screen Types, namely a Content View.
/// /// It will show all the sections of the screen.
struct ContentView: View {
    @EnvironmentObject var state: SDUIState

    var body: some View {
        HeaderView(scrollable: true)
        ForEach(self.state.sections ?? [], id: \.self) { section in
            SectionView(section: section).frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}
