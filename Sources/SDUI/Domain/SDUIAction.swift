//
//  SDUIAction.swift
//  
//
//  Created by Dylan on 14/06/2022.
//

import Foundation

public enum SDUIAction: Codable, Equatable, Hashable {
    case sheet(SDUISheet)
    case alert(SDUIAlert)
    case navigationLink(SDUINavigationLink)
    case share(SDUIShare)
    case custom(SDUICustomAction)

    public init(from decoder: Decoder) throws {
        let type = try SDUIActionType(rawValue: decoder.decodeType())

        switch type {
        case .sheet: self = try .sheet(decoder.decodeSingleValueContainer())
        case .alert: self = try .alert(decoder.decodeSingleValueContainer())
        case .navigationLink: self = try .navigationLink(decoder.decodeSingleValueContainer())
        case .share: self = try .share(decoder.decodeSingleValueContainer())
        default: self = try .custom(decoder.decodeSingleValueContainer())
        }
    }

    public func custom() -> SDUICustomAction? {
        var action: SDUICustomAction?
        if case .custom(let custom) = self { action = custom }
        return action
    }

    public func share() -> SDUIShare? {
        var action: SDUIShare?
        if case .share(let share) = self { action = share }
        return action
    }
}

public struct SDUICustomAction: Codable, Hashable {
    public var decoded: AnyHashable?

    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.actionDelegate?.decode(from: decoder)
    }

    public static func == (lhs: SDUICustomAction, rhs: SDUICustomAction) -> Bool {
        return ServerDrivenUI.shared.actionDelegate?.equals(lhs, rhs) ?? false
    }

    public func encode(to encoder: Encoder) throws {
        // TODO: Encode using delegate?
    }

}
