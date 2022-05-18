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
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $currentTab) {
                SDUIRootView()
                    .tabItem {
                        Label("SDUI Library", systemImage: "list.dash")
                    }
                    .tag(0)

                SDUIRootView(viewUrl: "products/custom")
                    .tabItem {
                        Label("Product custom", systemImage: "square.and.pencil")
                    }
                    .tag(1)
                
                SDUIRootView(viewUrl: "products")
                    .tabItem {
                        Label("Product list", systemImage: "square.and.pencil")
                    }.tag(2)
            }
        }
    }
    
}

