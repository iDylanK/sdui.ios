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
            return AnyView(ProductComponent(component: product))
        case .empty:
            return AnyView(ErrorView(error: "Decoding error"))
        }
    }

    func headerView(_ header: SDUI.SDUICustomHeader) -> AnyView {
        guard let header = header.decoded as? SDUIHeader else { return AnyView(ErrorView(error: "Decoding error1")) }

        switch header {
        case .product(let product): return AnyView(ProductHeader(header: product))
        case .filter(let filter): return AnyView(FilterHeader(header: filter))
        case .empty: return AnyView(ErrorView(error: "Decoding error2"))
        }
    }

    func placeHolderView(_ placeHolder: SDUI.SDUIPlaceHolder) -> AnyView {
        guard let placeHolder = placeHolder.decoded as? SDUIPlaceHolder else {
            return AnyView(ErrorView(error: "Decoding error"))
        }

        switch placeHolder {
        case .product(let product):
            return AnyView(ProductHeader(placeHolder: product))
        case .empty:
            return AnyView(ErrorView(error: "Decoding error"))
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

    func decodePlaceHolder(_ decoder: Decoder) throws -> Any {
        return try SDUIPlaceHolder(from: decoder)
    }

    func decodeAction(_ decoder: Decoder) throws -> Any {
        return try SDUIAction(from: decoder)
    }

    func componentEquals(_ lhs: SDUI.SDUIComponent, _ rhs: SDUI.SDUIComponent) -> Bool {
        guard let lhs = lhs.decoded as? SDUIComponent else { return false }
        guard let rhs = rhs.decoded as? SDUIComponent else { return false }
        return lhs == rhs
    }

    func headerEquals(_ lhs: SDUI.SDUICustomHeader, _ rhs: SDUI.SDUICustomHeader) -> Bool {
        guard let lhs = lhs.decoded as? SDUIHeader else { return false }
        guard let rhs = rhs.decoded as? SDUIHeader else { return false }
        return lhs == rhs
    }

    func placeHolderEquals(_ lhs: SDUI.SDUIPlaceHolder, _ rhs: SDUI.SDUIPlaceHolder) -> Bool {
        guard let lhs = lhs.decoded as? SDUIPlaceHolder else { return false }
        guard let rhs = rhs.decoded as? SDUIPlaceHolder else { return false }
        return lhs == rhs
    }

    func actionEquals(_ lhs: SDUI.SDUICustomAction, _ rhs: SDUI.SDUICustomAction) -> Bool {
        guard let lhs = lhs.decoded as? SDUIAction else { return false }
        guard let rhs = rhs.decoded as? SDUIAction else { return false }
        return lhs == rhs
    }

}

class SampleFilterDelegate: SDUIFilterDelegate {
    func componentFilter(_ components: [SDUI.SDUIComponent]) -> [SDUI.SDUIComponent] {
        // Only works for product search..
        if SDUIData.shared.filters.isEmpty || SDUIData.shared.filters.allSatisfy({ filter in
            !filter.value
        }) {
            return components
        }

        var filterComponents: [SDUI.SDUIComponent] = []
        for component in components {
            guard let componentDecoded = component.decoded as? SDUIComponent else { return components }
            guard case .product(let productComponent) = componentDecoded else { return components }
            if SDUIData.shared.filters[productComponent.product.category] == true {
                filterComponents.append(component)
            }
        }

        return filterComponents
    }
}
