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
    
    func componentView(_ component: SDUI.SDUIComponent) -> AnyView {
        guard let component = component.decoded as? SDUIComponent else { return AnyView(ErrorView(error: "Decoding error")) }
        
        switch component {
        case .product(let product): return AnyView(ProductListCell(product: product.product))
        case .empty(_): return AnyView(ErrorView(error: "Decoding error"))
        }
    }
    
    func headerView(_ header: SDUI.SDUIHeader) -> AnyView {
        return AnyView(Text("Header"))
    }
    
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
        Api.shared.getViewWith(uri: uri, data: data, completion: completion)
    }
    
    func decodeComponent(_ decoder: Decoder) throws -> Any  {
        return try SDUIComponent(from: decoder)
    }
    
}
