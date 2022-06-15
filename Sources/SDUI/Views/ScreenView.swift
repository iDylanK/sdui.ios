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
        VStack {
            if let header = self.state.screen?.header, !header.scrollable, header.decoded != nil {
                HeaderView(header: header)
            }

            if let screen = self.state.screen, let content = screen.content, let sections = content.sections {
                if screen.type == .list {
                    ListView(sections: sections)
                } else if content.scrollable {
                    RefreshableScrollView {
                        ContentView(sections: sections)
                    }
                } else {
                    ContentView(sections: sections)
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
}
