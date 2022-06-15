//
//  SDUIComponent.swift
//  
//
//  Created by Dylan on 31/05/2022.
//

import Foundation

public struct SDUIComponent: Codable, Hashable {
    public let id: String
    public let action: SDUIAction?
    public let searchable: String?

    public var decoded: Any?

    enum CodingKeys: String, CodingKey {
        case id
        case action
        case searchable
    }

    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.delegate?.decodeComponent(decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.action = try? container.decode(SDUIAction.self, forKey: .action)
        self.searchable = try? container.decode(String.self, forKey: .searchable)
    }

    public static func == (lhs: SDUIComponent, rhs: SDUIComponent) -> Bool {
        return ServerDrivenUI.shared.delegate?.componentEquals(lhs, rhs) ?? false
    }

    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(action)
        hasher.combine(searchable)
    }

}
