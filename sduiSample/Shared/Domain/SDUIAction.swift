//
//  SDUIAction.swift
//  sdui (iOS)
//
//  Created by Dylan on 14/06/2022.
//

import Foundation
import SDUI

public enum SDUIAction {
    case productLike(SDUIProductLike)
    case empty(SDUIEmpty)
}

extension SDUIAction: Codable, Hashable {
    public init(from decoder: Decoder) throws {
        let type = try SDUIActionType(rawValue: decoder.decodeType())
 
        switch type {
        case .productLike: self = try .productLike(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }

}
