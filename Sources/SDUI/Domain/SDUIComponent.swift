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
    case basic(SDUIBasicComponent)

    public init(from decoder: Decoder) throws {
        let type = try SDUIBasicComponentType(rawValue: decoder.decodeType())
        if case .basic = type {
            self = try .basic(decoder.decodeSingleValueContainer())
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

    public init(from custom: SDUICustomComponent) {
        self = .custom(custom)
    }

    public func custom() -> SDUICustomComponent? {
        var component: SDUICustomComponent?
        if case .custom(let custom) = self { component = custom }
        return component
    }

    public func basic() -> SDUIBasicComponent? {
        var component: SDUIBasicComponent?
        if case .basic(let basic) = self { component = basic }
        return component
    }

    func base() -> SDUIBaseComponent {
        switch self {
        case .custom(let component):
            return component.base
        case .base(let base):
            return base
        case .basic(let basic):
            return SDUIBaseComponent(action: basic.action, id: basic.id, searchable: basic.searchable)
        }
    }
}

public struct SDUICustomComponent: Codable, Hashable {
    public var base: SDUIBaseComponent
    public var decoded: AnyHashable?

    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.componentDelegate?.decode(from: decoder)
        self.base = try SDUIComponent(baseDecoder: decoder).base()
    }

    public static func == (lhs: SDUICustomComponent, rhs: SDUICustomComponent) -> Bool {
        return ServerDrivenUI.shared.componentDelegate?.equals(lhs, rhs) ?? false
    }

    public func encode(to encoder: Encoder) throws {
        // TODO: Encode using delegate?
        try encoder.encodeSingleValueContainer(value: base)
    }
}
