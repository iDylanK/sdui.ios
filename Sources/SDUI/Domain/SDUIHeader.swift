//
//  SDUIHeader.swift
//  
//
//  Created by Dylan on 01/06/2022.
//

import Foundation

public struct SDUIHeader: Codable, Hashable {
    public let id: String
    public let type: SDUIHeaderType?
    public let title: String
    public let action: SDUIAction?
    public let scrollable: Bool
    public let displayMode: SDUIDisplayMode?

    public var decoded: Any?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case title = "title"
        case action = "action"
        case scrollable = "scrollable"
        case displayMode = "display_mode"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.action = try? container.decode(SDUIAction.self, forKey: .action)
        self.scrollable = try container.decode(Bool.self, forKey: .scrollable)
        self.displayMode = try? container.decode(SDUIDisplayMode.self, forKey: .displayMode)

        do {
            self.type = try container.decode(SDUIHeaderType.self, forKey: .type)
        } catch {
            self.decoded = try ServerDrivenUI.shared.delegate?.decodeHeader(decoder)
            self.type = nil
        }
    }

    public static func == (lhs: SDUIHeader, rhs: SDUIHeader) -> Bool {
        if lhs.type == nil && rhs.type != nil { return false }
        if lhs.type != nil && rhs.type == nil { return false }
        if lhs.type == nil && rhs.type != nil { return ServerDrivenUI.shared.delegate?.headerEquals(lhs, rhs) ?? false }

        return lhs.id == rhs.id && lhs.title == rhs.title &&
            lhs.action == rhs.action && lhs.scrollable == rhs.scrollable &&
            lhs.displayMode == rhs.displayMode
    }

    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(type)
        hasher.combine(action)
        hasher.combine(scrollable)
    }

}
