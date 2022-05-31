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
        VStack() {
            if let header = self.screen.header, !header.scrollable {
                HeaderView(header: header).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100).background(.red).border(.green)
            }
            
            if let view = screen.view, let sections = view.sections {
                if screen.type == .list {
                    ListView(sections: sections)
                } else if view.scrollable {
                    RefreshableScrollView {
                        ScreenBody(screen: screen, sections: sections)
                    }
                } else {
                    ScreenBody(screen: screen, sections: sections)
                }
            }
        }
        .frame(minHeight: 0, maxHeight: .infinity, alignment: .topLeading).background(.yellow)
        .alert(self.state.alert?.title ?? "", isPresented: self.state.alertBinding(), actions: {}, message: {
            Text(self.state.alert?.message ?? "")
        })
        
        .sheet(isPresented: self.state.sheetBinding()) {
            SDUIRootView(viewUrl: self.state.sheet?.url)
        }
    }
    
    private struct ScreenBody: View {
        var screen: SDUIScreen
        var sections: [SDUISection]
        
        var body: some View {
            if let header = screen.header, header.scrollable {
                HeaderView(header: header)
            }
            ForEach(sections, id: \.self) { section in
                SectionView(section: section).frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
    
}


