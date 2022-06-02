//
//  SDUIHeader.swift
//  
//
//  Created by Dylan on 01/06/2022.
//

import Foundation

public struct SDUIHeader: Codable, Hashable {
    public var id: String
    public var rawType: String
    public var action: SDUIAction?
    public var scrollable: Bool
    
    public var decoded: Any?
    
    enum CodingKeys: String, CodingKey {
        case action = "action"
        case id = "id"
        case scrollable = "scrollable"
    }
    
    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.delegate?.decodeHeader(decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.action = try? container.decode(SDUIAction.self, forKey: .action)
        self.scrollable = try container.decode(Bool.self, forKey: .scrollable)
        
        self.rawType = try decoder.decodeType()
    }
    
    public static func == (lhs: SDUIHeader, rhs: SDUIHeader) -> Bool {
        return ServerDrivenUI.shared.delegate?.headerEquals(lhs, rhs) ?? false
    }
    
    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(rawType)
        hasher.combine(action)
        hasher.combine(scrollable)
    }

}
