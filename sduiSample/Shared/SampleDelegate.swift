//
//  SampleDelegate.swift
//  sdui
//
//  Created by Dylan on 10/05/2022.
//

import Foundation
import SDUI
import SwiftUI

class SampleDataSource: SDUIDataSource {
    func getView(with url: String?, data: String?, completion: @escaping ((SDUIScreen) -> Void)) {
        Api.shared.getView(with: url, data: data, completion: completion)
    }
}

class SampleComponentDelegate: SDUIComponentDelegate {
    func view(for component: SDUI.SDUICustomComponent, with action: SDUICustomAction?) -> AnyView {
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

    func decode(from decoder: Decoder) throws -> AnyHashable {
        return try SDUIComponent(from: decoder)
    }

    func equals(_ lhs: SDUI.SDUICustomComponent, _ rhs: SDUI.SDUICustomComponent) -> Bool {
        guard let lhs = lhs.decoded as? SDUIComponent else { return false }
        guard let rhs = rhs.decoded as? SDUIComponent else { return false }
        return lhs == rhs
    }

    func filter(component: SDUI.SDUICustomComponent) -> Bool {
        // Only works for product search..
        if SDUIData.shared.filters.isEmpty || SDUIData.shared.filters.allSatisfy({ filter in
            !filter.value
        }) {
            return true
        }

        guard let componentDecoded = component.decoded as? SDUIComponent else { return true }
        guard case .product(let productComponent) = componentDecoded else { return true }

        return SDUIData.shared.filters[productComponent.product.category] == true
    }
}

class SampleHeaderDelegate: SDUIHeaderDelegate {
    func view(for header: SDUI.SDUICustomHeader) -> AnyView {
        guard let header = header.decoded as? SDUIHeader else { return AnyView(ErrorView(error: "Decoding error1")) }

        switch header {
        case .product(let product): return AnyView(ProductHeader(header: product))
        case .filter(let filter): return AnyView(FilterHeader(header: filter))
        case .empty: return AnyView(ErrorView(error: "Decoding error2"))
        }
    }

    func decode(from decoder: Decoder) throws -> AnyHashable {
        return try SDUIHeader(from: decoder)
    }

    func equals(_ lhs: SDUI.SDUICustomHeader, _ rhs: SDUI.SDUICustomHeader) -> Bool {
        guard let lhs = lhs.decoded as? SDUIHeader else { return false }
        guard let rhs = rhs.decoded as? SDUIHeader else { return false }
        return lhs == rhs
    }
}

class SamplePlaceHolderDelegate: SDUIPlaceHolderDelegate {
    func view(for placeHolder: SDUI.SDUIPlaceHolder) -> AnyView {
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

    func decode(from decoder: Decoder) throws -> AnyHashable {
        return try SDUIPlaceHolder(from: decoder)
    }

    func equals(_ lhs: SDUI.SDUIPlaceHolder, _ rhs: SDUI.SDUIPlaceHolder) -> Bool {
        guard let lhs = lhs.decoded as? SDUIPlaceHolder else { return false }
        guard let rhs = rhs.decoded as? SDUIPlaceHolder else { return false }
        return lhs == rhs
    }
}

class SampleActionDelegate: SDUIActionDelegate {
    func decode(from decoder: Decoder) throws -> AnyHashable {
        return try SDUIAction(from: decoder)
    }

    func equals(_ lhs: SDUI.SDUICustomAction, _ rhs: SDUI.SDUICustomAction) -> Bool {
        guard let lhs = lhs.decoded as? SDUIAction else { return false }
        guard let rhs = rhs.decoded as? SDUIAction else { return false }
        return lhs == rhs
    }
}
