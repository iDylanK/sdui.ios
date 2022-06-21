//
//  SDUIHeader.swift
//  
//
//  Created by Dylan on 01/06/2022.
//

import Foundation

public enum SDUIHeader: Codable, Equatable, Hashable {
    case custom(SDUICustomHeader)
    case base(SDUIBaseHeader)

    public init(from decoder: Decoder) throws {
        let type = try SDUIHeaderType(rawValue: decoder.decodeType())
        if case .header = type {
            self = try .base(decoder.decodeSingleValueContainer())
            return
        }

        do {
            self = try .custom(decoder.decodeSingleValueContainer())
        } catch {
            self = try .base(decoder.decodeSingleValueContainer())
        }

    }

    public init(baseDecoder: Decoder) throws {
        self = try .base(baseDecoder.decodeSingleValueContainer())
    }

    public func custom() -> SDUICustomHeader? {
        var header: SDUICustomHeader?
        if case .custom(let custom) = self { header = custom }
        return header
    }

    func base() -> SDUIBaseHeader {
        switch self {
        case .custom(let header):
            return header.base
        case .base(let base):
            return base
        }
    }
}

public struct SDUICustomHeader: Codable, Hashable {
    public let base: SDUIBaseHeader
    public var decoded: AnyHashable?

    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.headerDelegate?.decode(from: decoder)
        self.base = try SDUIHeader(baseDecoder: decoder).base()
    }

    public static func == (lhs: SDUICustomHeader, rhs: SDUICustomHeader) -> Bool {
        return ServerDrivenUI.shared.headerDelegate?.equals(lhs, rhs) ?? false
    }
//
    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }
}
