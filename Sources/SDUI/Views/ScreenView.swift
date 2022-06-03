//
//  ScreenView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ScreenView: View {
    @EnvironmentObject var state: SDUIState
    
    var body: some View {
        VStack() {
            if let header = self.state.screen?.header, !header.scrollable {
                HeaderView(header: header).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            }
            
            if let screen = self.state.screen, let view = screen.view, let sections = view.sections {
                if screen.type == .list {
                    ListView(sections: sections)
                } else if view.scrollable {
                    RefreshableScrollView {
                        ScreenBody(sections: sections)
                    }
                } else {
                    ScreenBody(sections: sections)
                }
            }
        }
        .frame(minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .alert(self.state.alert?.title ?? "", isPresented: self.state.alertBinding(), actions: {}, message: {
            Text(self.state.alert?.message ?? "")
        })
        
        .sheet(isPresented: self.state.sheetBinding()) {
            SDUIRootView(viewUrl: self.state.sheet?.url, placeHolder: self.state.sheet?.placeHolder)
        }
    }
    
    private struct ScreenBody: View {
        @EnvironmentObject var state: SDUIState
        
        var sections: [SDUISection]
        
        var body: some View {
            if let header = self.state.screen?.header, header.scrollable {
                HeaderView(header: header)
            }
            ForEach(sections, id: \.self) { section in
                SectionView(section: section).frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
    
}


