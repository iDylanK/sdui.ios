//
//  AppDelegate.swift
//  sdui
//
//  Created by Dylan on 11/05/2022.
//

import UIKit
import SDUI

class AppDelegate: NSObject, UIApplicationDelegate {
    var dataSource = SampleDataSource()
    var componentDelegate = SampleComponentDelegate()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        ServerDrivenUI.shared.dataSource = self.dataSource
        ServerDrivenUI.shared.componentDelegate = self.componentDelegate
        return true
    }
}
