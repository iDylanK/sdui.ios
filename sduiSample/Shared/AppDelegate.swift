//
//  AppDelegate.swift
//  sdui
//
//  Created by Dylan on 11/05/2022.
//

import UIKit
import SDUI

class AppDelegate: NSObject, UIApplicationDelegate {
    var delegate = SampleDelegate()
    var filterDelegate = SampleFilterDelegate()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        ServerDrivenUI.shared.delegate = self.delegate
        ServerDrivenUI.shared.filterDelegate = self.filterDelegate
        return true
    }
}
