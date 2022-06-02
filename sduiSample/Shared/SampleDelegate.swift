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
        guard let header = header.decoded as? SDUIHeader else { return AnyView(ErrorView(error: "Decoding error")) }
        
        switch header {
        case .product(_): return AnyView(ProductHeader())
        case .empty(_): return AnyView(ErrorView(error: "Decoding error"))
        }
    }
    
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
        Api.shared.getViewWith(uri: uri, data: data, completion: completion)
    }
    
    func decodeComponent(_ decoder: Decoder) throws -> Any  {
        return try SDUIComponent(from: decoder)
    }
    
    func decodeHeader(_ decoder: Decoder) throws -> Any  {
        return try SDUIHeader(from: decoder)
    }
    
    func componentEquals(_ lhs: SDUI.SDUIComponent, _ rhs: SDUI.SDUIComponent) -> Bool {
        guard let lhs = lhs.decoded as? SDUIComponent else { return false }
        guard let rhs = rhs.decoded as? SDUIComponent else { return false }
        return lhs == rhs
    }
    
    func headerEquals(_ lhs: SDUI.SDUIHeader, _ rhs: SDUI.SDUIHeader) -> Bool {
        guard let lhs = lhs.decoded as? SDUIHeader else { return false }
        guard let rhs = rhs.decoded as? SDUIHeader else { return false }
        return lhs == rhs
    }
    
}
