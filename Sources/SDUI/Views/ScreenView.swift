//
//  ScreenView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ScreenView: View {
    @EnvironmentObject var state: SDUIState
    var screen: SDUIScreen
    
    var body: some View {
        VStack {
//            HeaderView()
            if let sections = self.screen.view?.sections {
                ForEach(sections, id: \.self) { section in
                    SectionView(section: section)
                }
            }
        }
        .alert(self.state.alert?.title ?? "", isPresented: self.state.alertBinding(), actions: {}, message: {
            Text(self.state.alert?.message ?? "")
        })
        
        .sheet(isPresented: self.state.sheetBinding()) {
            SDUIRootView(viewUrl: self.state.sheet?.url)
        }
    }
}
