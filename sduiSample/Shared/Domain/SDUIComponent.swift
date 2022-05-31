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

extension SDUIComponent: Decodable {
    public init(from decoder: Decoder) throws {
        let type = try SDUIComponentType(rawValue: decoder.decodeType())
 
        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        case .none: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }

}
