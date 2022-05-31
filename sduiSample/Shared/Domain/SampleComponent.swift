// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sDUIComponent = try? newJSONDecoder().decode(SDUIComponent.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation
import SDUI

// MARK: - SDUIComponent
public struct SampleComponent: Codable, Hashable {
    public let color: SDUIColor?
    public let content: String?
    public let type: SampleComponentType
    public let action: SDUIAction?
    public let title: String?

    enum CodingKeys: String, CodingKey {
        case color = "color"
        case content = "content"
        case type = "type"
        case action = "action"
        case title = "title"
    }

    public init(color: SDUIColor?, content: String?, type: SampleComponentType, action: SDUIAction?, title: String?) {
        self.color = color
        self.content = content
        self.type = type
        self.action = action
        self.title = title
    }
}

public struct SDUIProductList: Codable, Hashable {
    public let products: [SDUIProduct]
    public let type: SDUICustomType

    enum CodingKeys: String, CodingKey {
        case products = "products"
        case type = "type"
    }

    public init(products: [SDUIProduct], type: SDUICustomType) {
        self.products = products
        self.type = type
    }
}

public struct SDUIProduct: Codable, Hashable {
    public let action: SDUIAction?
    public let content: String
    public let image: String

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case content = "content"
        case image = "image"
    }

    public init(action: SDUIAction?, content: String, image: String) {
        self.action = action
        self.content = content
        self.image = image
    }
}
