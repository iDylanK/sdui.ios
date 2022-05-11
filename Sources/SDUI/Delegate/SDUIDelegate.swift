//
//  File.swift
//  
//
//  Created by Dylan on 08/05/2022.
//

import Foundation
import SwiftUI

public protocol SDUIDelegate {
//    associatedtype V: View
//    var view: V { get }
    
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ()))
    func customComponent(_ component: SDUIComponent) -> AnyView
}

//class sDelegate: SDUIDelegate {
//    func customComponent(_ component: SDUIComponent) -> Text {
//        return Text("asd")
//    }
//
//    typealias V = Text
//
//    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
//
//    }
//
////    func customComponent(_ component: SDUIComponent) -> some View {
////        return Text("Text")
////    }
//}
