//
//  SDUIPlaceHolder.swift
//  
//
//  Created by Dylan on 17/06/2022.
//

import Foundation

public struct SDUIPlaceHolder: Codable, Hashable {
    public var decoded: AnyHashable?

    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.placeHolderDelegate?.decode(from: decoder)
    }

    public static func == (lhs: SDUIPlaceHolder, rhs: SDUIPlaceHolder) -> Bool {
        return ServerDrivenUI.shared.placeHolderDelegate?.equals(lhs, rhs) ?? false
    }

    public func encode(to encoder: Encoder) throws {
        // TODO: Encode using delegate?
    }

}
