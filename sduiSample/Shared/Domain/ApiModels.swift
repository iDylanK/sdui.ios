// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sDUISchema = try? JSONDecoder().decode(SDUISchema.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation
import SDUI


// MARK: - SDUISchema



public enum SDUIActionType: String, Codable, Hashable {
    case alert = "ALERT"
    case navigationLink = "NAVIGATION_LINK"
    case productBuy = "PRODUCT_BUY"
    case productLike = "PRODUCT_LIKE"
    case sheet = "SHEET"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIActionBase



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

public enum SDUIComponentType: String, Codable, Hashable {
    case product = "PRODUCT"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIComponentBase





public struct SDUIProductBuy: Codable, Hashable {
    public let id: String
    public let message: String?
    public let placeHolder: SDUIPlaceHolder?
    public let title: String?
    public let type: SDUIProductBuyType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case message = "message"
        case placeHolder = "place_holder"
        case title = "title"
        case type = "type"
    }

    public init(id: String, message: String?, placeHolder: SDUIPlaceHolder?, title: String?, type: SDUIProductBuyType) {
        self.id = id
        self.message = message
        self.placeHolder = placeHolder
        self.title = title
        self.type = type
    }
}

public enum SDUIProductBuyType: String, Codable, Hashable {
    case productBuy = "PRODUCT_BUY"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIProductComponent
public struct SDUIProductComponent: Codable, Hashable {
    public let action: SDUIAction?
    public let id: String
    public let product: SDUIProduct
    public let type: SDUIComponentType

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case id = "id"
        case product = "product"
        case type = "type"
    }

    public init(action: SDUIAction?, id: String, product: SDUIProduct, type: SDUIComponentType) {
        self.action = action
        self.id = id
        self.product = product
        self.type = type
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIProductHeader
public struct SDUIProductHeader: Codable, Hashable {
    public let id: String
    public let product: SDUIProduct
    public let scrollable: Bool
    public let type: SDUIComponentType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case product = "product"
        case scrollable = "scrollable"
        case type = "type"
    }

    public init(id: String, product: SDUIProduct, scrollable: Bool, type: SDUIComponentType) {
        self.id = id
        self.product = product
        self.scrollable = scrollable
        self.type = type
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIProductLike
public struct SDUIProductLike: Codable, Hashable {
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let type: SDUIProductLikeType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUIProductLikeType) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
    }
}

public enum SDUIProductLikeType: String, Codable, Hashable {
    case productLike = "PRODUCT_LIKE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIScreen


public enum SDUISheetType: String, Codable, Hashable {
    case sheet = "SHEET"
}

public enum SDUIComponent: Codable, Equatable {
    case product(SDUIProductComponent)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIComponentType(rawValue: decoder.decodeType())

        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        case .none: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}
