//
//  File.swift
//  
//
//  Created by Dylan on 17/06/2022.
//

import Foundation

public struct SDUIPlaceHolder: Codable, Hashable {
    public var decoded: Any?

    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.delegate?.decodePlaceHolder(decoder)
    }

    public static func == (lhs: SDUIPlaceHolder, rhs: SDUIPlaceHolder) -> Bool {
        return ServerDrivenUI.shared.delegate?.placeHolderEquals(lhs, rhs) ?? false
    }

    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }

    public func hash(into hasher: inout Hasher) {
    }

}
