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
    
//    typealias V = String
    
    
    
//    typealias V = Text.Type
    
    func customComponent(_ component: SDUIComponent) -> AnyView {
        switch component.customType {
        case .sample: return AnyView(Text("Sample"))
        case .postList: return AnyView(PostListView())
        case .none: return AnyView(EmptyView()) }
    }
    
    
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
        Api.shared.getViewWith(uri: uri, data: data, completion: completion)
    }
    
//    func customComponent(_ component: SDUIComponent) -> some View {
//        return Text("Text")
//    }
}
