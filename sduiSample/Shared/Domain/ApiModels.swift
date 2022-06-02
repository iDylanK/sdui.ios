// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let apiSchema = try? JSONDecoder().decode(ApiSchema.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation
import SDUI


public struct SDUIProductComponent: Codable, Hashable{
    public let id: String
    public let type: String
    public let action: SDUIAction?
    public let product: SDUIProduct
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case action = "action"
        case product = "product"
    }

    public init(id: String, type: String, action: SDUIAction?, product: SDUIProduct) {
        self.id = id
        self.type = type
        self.action = action
        self.product = product
    }
}

public struct SDUIProductHeader: Codable, Hashable{
    public let id: String
    public let type: String
    public let action: SDUIAction?
    public let product: SDUIProduct
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case action = "action"
        case product = "product"
    }

    public init(id: String, type: String, action: SDUIAction?, product: SDUIProduct) {
        self.id = id
        self.type = type
        self.action = action
        self.product = product
    }
}

// MARK: - sduiProduct
public struct SDUIProduct: Codable, Hashable {
    public let content: String
    public let image: String

    enum CodingKeys: String, CodingKey {
        case content = "content"
        case image = "image"
    }

    public init(content: String, image: String) {
        self.content = content
        self.image = image
    }
}

public struct SDUIEmpty: Codable, Hashable {
    
}
