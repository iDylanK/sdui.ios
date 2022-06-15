//
//  SDUIAction.swift
//  
//
//  Created by Dylan on 14/06/2022.
//

import Foundation

public struct SDUIAction: Codable, Hashable {
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let type: SDUIActionType?
    public let url: String?
    public let message: String?
    public let title: String?

    public var decoded: Any?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
        case message = "message"
        case title = "title"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.url = try? container.decode(String.self, forKey: .url)
        self.message = try? container.decode(String.self, forKey: .message)
        self.title = try? container.decode(String.self, forKey: .title)
        self.placeHolder = try? container.decode(SDUIPlaceHolder.self, forKey: .placeHolder)

        do {
            self.type = try container.decode(SDUIActionType.self, forKey: .type)
        } catch {
            self.decoded = try ServerDrivenUI.shared.delegate?.decodeAction(decoder)
            self.type = nil
        }
    }

    public static func == (lhs: SDUIAction, rhs: SDUIAction) -> Bool {
        if lhs.type == nil && rhs.type != nil { return false }
        if lhs.type != nil && rhs.type == nil { return false }
        if lhs.type == nil && rhs.type != nil { return ServerDrivenUI.shared.delegate?.actionEquals(lhs, rhs) ?? false }

        return lhs.id == rhs.id && lhs.placeHolder == rhs.placeHolder && lhs.url == rhs.url &&
            lhs.message == rhs.message && lhs.title == rhs.title
    }

    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(placeHolder)
        hasher.combine(type)
        hasher.combine(url)
        hasher.combine(message)
        hasher.combine(title)
    }
}
