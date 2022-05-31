//
//  SDUIComponent.swift
//  
//
//  Created by Dylan on 31/05/2022.
//

import Foundation

public struct SDUIComponent: Codable, Equatable, Hashable {
    public var action: SDUIAction?
    public var id: String
    public var rawType: String
    public var decoded: Any?
    
    enum CodingKeys: String, CodingKey {
        case action = "action"
        case id = "id"
    }
    
    public init(from decoder: Decoder) throws {
        self.decoded = try ServerDrivenUI.shared.delegate?.decodeComponent(decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.action = try? container.decode(SDUIAction.self, forKey: .action)
        
        self.rawType = try decoder.decodeType()
    }
    
    public static func == (lhs: SDUIComponent, rhs: SDUIComponent) -> Bool {
//        TODO: ...
        return true
    }
    
    public func encode(to encoder: Encoder) throws {
//        TODO: ...
    }
    
    public func hash(into hasher: inout Hasher) {
//        TODO: ...
    }

}
