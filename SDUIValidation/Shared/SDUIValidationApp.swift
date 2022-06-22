//
//  SDUIValidationApp.swift
//  Shared
//
//  Created by Dylan on 22/06/2022.
//

import SwiftUI
import SDUI

@main
struct SDUIValidationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject var sduiData = SDUIData.shared
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                Text("Implement...")
            }
            .environmentObject(sduiData)
        }
    }
}
