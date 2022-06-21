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
    var headerDelegate = SampleHeaderDelegate()
    var actionDelegate = SampleActionDelegate()
    var placeHolderDelegate = SamplePlaceHolderDelegate()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        ServerDrivenUI.shared.dataSource = self.dataSource
        ServerDrivenUI.shared.componentDelegate = self.componentDelegate
        ServerDrivenUI.shared.headerDelegate = self.headerDelegate
        ServerDrivenUI.shared.actionDelegate = self.actionDelegate
        ServerDrivenUI.shared.placeHolderDelegate = self.placeHolderDelegate
        return true
    }
}
