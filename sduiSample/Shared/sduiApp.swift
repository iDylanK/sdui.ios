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
    
    
    var body: some Scene {
        WindowGroup {
            SDUIRootView()
        }
    }
}
