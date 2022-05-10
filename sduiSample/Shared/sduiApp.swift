//
//  sduiApp.swift
//  Shared
//
//  Created by Dylan on 06/04/2022.
//

import SwiftUI
import SDUI

@main
struct sduiApp: App {    
    var delegate = SampleDelegate()
    
    var body: some Scene {
        WindowGroup {
            SDUIRootView(delegate: delegate)
        }
    }
}

class SampleDelegate: SDUIDelegate {
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
        Api.shared.getViewWith(uri: uri, data: data, completion: completion)
    }
}
