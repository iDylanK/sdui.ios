//
//  SampleDelegate.swift
//  sdui
//
//  Created by Dylan on 10/05/2022.
//

import Foundation
import SDUI
import SwiftUI

class SampleDelegate: SDUIDelegate {
    func customComponent(_ component: SDUIComponent) -> AnyView {
        return AnyView(CustomComponentView(component: component))
    }
    
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
        Api.shared.getViewWith(uri: uri, data: data, completion: completion)
    }
    
}
