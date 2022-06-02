//
//  SDUIComponent.swift
//  sdui (iOS)
//
//  Created by Dylan on 20/05/2022.
//

import Foundation
import SDUI

public enum SDUIComponent {
    case product(SDUIProductComponent)
    case empty(SDUIEmpty)
}

extension SDUIComponent: Codable, Equatable {
    public init(from decoder: Decoder) throws {
        let type = try SDUIComponentType(rawValue: decoder.decodeType())
 
        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        case .none: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }

}

public enum SDUIComponentType: String, Codable, Hashable {
//    case productList = "PRODUCT_LIST"
    case product = "PRODUCT"
}
