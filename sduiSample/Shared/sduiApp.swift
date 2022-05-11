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
//    var sdui = SDUI(delegate: delegate)
    
    var body: some Scene {
        WindowGroup {
//            SDUI(delegate: delegate).rootView
            SDUIRootView(delegate: delegate)
        }
    }
}



//public class SDUISampleView: SDUIRootView {
////    override func SDUIComponent(_ component: SDUIComponent) -> some View {
////        super.SDUIComponent(component)
////    }
//}
