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

    func componentView(_ component: SDUI.SDUIComponent, action: SDUICustomAction?) -> AnyView {
        guard let componentDecoded = component.decoded as? SDUIComponent else {
            return AnyView(ErrorView(error: "Decoding error"))
        }

        switch componentDecoded {
        case .product(let product):
            return AnyView(ProductListCell(product: product))
        case .empty:
            return AnyView(ErrorView(error: "Decoding error"))
        }
    }

    func headerView(_ header: SDUI.SDUIHeader) -> AnyView {
        guard let header = header.decoded as? SDUIHeader else { return AnyView(ErrorView(error: "Decoding error")) }

        switch header {
        case .product(let product): return AnyView(ProductHeader(product: product))
        case .empty: return AnyView(ErrorView(error: "Decoding error"))
        }
    }

    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> Void)) {
        Api.shared.getViewWith(uri: uri, data: data, completion: completion)
    }

    func decodeComponent(_ decoder: Decoder) throws -> Any {
        return try SDUIComponent(from: decoder)
    }

    func decodeHeader(_ decoder: Decoder) throws -> Any {
        return try SDUIHeader(from: decoder)
    }

    func decodeAction(_ decoder: Decoder) throws -> Any {
        return try SDUIAction(from: decoder)
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

    func actionEquals(_ lhs: SDUI.SDUICustomAction, _ rhs: SDUI.SDUICustomAction) -> Bool {
        guard let lhs = lhs.decoded as? SDUIAction else { return false }
        guard let rhs = rhs.decoded as? SDUIAction else { return false }
        return lhs == rhs
    }

    func componentSearch(_ components: [SDUI.SDUIComponent], search: String) -> [SDUI.SDUIComponent] {
        // Only works for product search..
        if search.isEmpty { return components }

        var searchComponents: [SDUI.SDUIComponent] = []
        for component in components {
            guard let componentDecoded = component.decoded as? SDUIComponent else { return components }
            guard case .product(let product) = componentDecoded else { return components }
            if product.product.content.contains(search) { searchComponents.append(component) }
        }

        return searchComponents
    }

}
