//
//  sduiApp.swift
//  Shared
//
//  Created by Dylan on 06/04/2022.
//

import SwiftUI
import SDUI
import UIKit

@main
struct sduiApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @State private var currentTab = 0
    @StateObject var sduiData = SDUIData()
    
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $currentTab) {
                NavigationView {
                    SDUIRootView()
                }
                    .tabItem {
                        Label("SDUI Library", systemImage: "list.dash")
                    }
                    .tag(0)

                Text("Documentation")
                    .tabItem {
                        Label("Documentation", systemImage: "square.and.pencil")
                    }
                    .tag(1)
                
                Text("Templates")
                    .tabItem {
                        Label("Templates", systemImage: "square.and.pencil")
                    }.tag(2)
            }.environmentObject(sduiData) //IMPORTANT: has to be installed on parent navigation view of SDUIRootView to work
        }
    }
    
}

