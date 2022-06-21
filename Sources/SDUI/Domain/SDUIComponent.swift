//
//  SDUIComponent.swift
//  
//
//  Created by Dylan on 31/05/2022.
//

import Foundation

public enum SDUIComponent: Codable, Hashable {
    case custom(SDUICustomComponent)
    case base(SDUIBaseComponent)

    public init(from decoder: Decoder) throws {
        do {
            self = try .custom(decoder.decodeSingleValueContainer())
        } catch {
            self = try .base(decoder.decodeSingleValueContainer())
        }
    }

    public init(baseDecoder: Decoder) throws {
        self = try .base(baseDecoder.decodeSingleValueContainer())
    }

    public init(from custom: SDUICustomComponent) {
        self = .custom(custom)
    }

    public func custom() -> SDUICustomComponent? {
        var component: SDUICustomComponent?
        if case .custom(let custom) = self { component = custom }
        return component
    }

    func base() -> SDUIBaseComponent {
        switch self {
        case .custom(let component):
            return component.base
        case .base(let base):
            return base
        }
    }
}

public struct SDUICustomComponent: Codable, Hashable {
    public let base: SDUIBaseComponent
    public var decoded: Any?

    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.delegate?.decodeComponent(decoder)
        self.base = try SDUIComponent(baseDecoder: decoder).base()
    }

    public static func == (lhs: SDUICustomComponent, rhs: SDUICustomComponent) -> Bool {
        return ServerDrivenUI.shared.delegate?.componentEquals(lhs, rhs) ?? false
    }
//
    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }
//
    public func hash(into hasher: inout Hasher) {
//        TODO: ...
    }
}
