//
//  SampleDelegate.swift
//  sdui
//
//  Created by Dylan on 10/05/2022.
//

import Foundation
//import struct­ SDUI.SDUIComponent
import SDUI
import SwiftUI

class SampleDelegate: SDUIDelegate {
    
    typealias SampleComponent = SDUIComponent
    
    func componentView(_ component: SDUI.SDUIComponent) -> AnyView {
        
        do {
            let jsonEncoder = JSONEncoder()
            let jsonData = try jsonEncoder.encode(component.content)
            let component = Api.decode(data: jsonData, type: SDUIComponent.self)
            guard let component = component else { return AnyView(Text("Error1")) }
            return AnyView(ComponentView(component: component))
        } catch {
            return AnyView(Text("Error2"))
        }

//        var container = singleValueContainer()
//        let encoder = Encoder()
//        let ff = JSONEncoder()
//        component.content?.encode(to: component.content!)
        
//        return AnyView(CustomComponentView(component: component))
    }
    
    func headerView(_ header: SDUI.SDUIHeader) -> AnyView {
        return AnyView(Text("Header"))
    }
    
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
        Api.shared.getViewWith(uri: uri, data: data, completion: completion)
    }
    
}
