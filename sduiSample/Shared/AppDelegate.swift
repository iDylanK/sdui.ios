//
//  AppDelegate.swift
//  sdui
//
//  Created by Dylan on 11/05/2022.
//

import UIKit
import SDUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        ServerDrivenUI.shared.dataSource = SampleDataSource()
        ServerDrivenUI.shared.componentDelegate = SampleComponentDelegate()
        ServerDrivenUI.shared.headerDelegate = SampleHeaderDelegate()
        ServerDrivenUI.shared.actionDelegate = SampleActionDelegate()
        ServerDrivenUI.shared.placeHolderDelegate = SamplePlaceHolderDelegate()
        return true
    }
}
