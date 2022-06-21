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
            HeaderView(scrollable: false)

            if let screen = self.state.screen, let content = screen.content, state.sections != nil {
                if screen.type == .list {
                    ListView()
                } else if content.scrollable {
                    RefreshableScrollView {
                        ContentView()
                    }
                } else {
                    ContentView()
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
        .sheet(isPresented: self.state.shareBinding()) {
            ShareView()
        }
    }
}
