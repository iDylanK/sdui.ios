//
//  SDUIHeader.swift
//  sdui (iOS)
//
//  Created by Dylan on 01/06/2022.
//

import Foundation
import SDUI

public enum SDUIHeader {
    case product(SDUIProductHeader)
    case empty(SDUIEmpty)
}

extension SDUIHeader: Codable, Hashable {
    public init(from decoder: Decoder) throws {
        let type = try SDUIComponentType(rawValue: decoder.decodeType())
 
        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        case .none: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }

}

public enum SDUIHeaderType: String, Codable, Hashable {
//    case productList = "PRODUCT_LIST"
    case product = "PRODUCT"
}
