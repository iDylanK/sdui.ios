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
    public let id: String
    public let image: String

    enum CodingKeys: String, CodingKey {
        case content = "content"
        case id = "id"
        case image = "image"
    }

    public init(content: String, id: String, image: String) {
        self.content = content
        self.id = id
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

public struct SDUIComponentExample: Codable, Hashable {
    public let action: SDUIAction?
    public let content: String
    public let id: String
    public let searchable: String?

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case content = "content"
        case id = "id"
        case searchable = "searchable"
    }

    public init(action: SDUIAction?, content: String, id: String, searchable: String?) {
        self.action = action
        self.content = content
        self.id = id
        self.searchable = searchable
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIComponentProduct
public struct SDUIComponentProduct: Codable, Hashable {
    public let action: SDUIAction?
    public let id: String
    public let product: SDUIProduct
    public let searchable: String?
    public let type: SDUIComponentType

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case id = "id"
        case product = "product"
        case searchable = "searchable"
        case type = "type"
    }

    public init(action: SDUIAction?, id: String, product: SDUIProduct, searchable: String?, type: SDUIComponentType) {
        self.action = action
        self.id = id
        self.product = product
        self.searchable = searchable
        self.type = type
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIContent
public struct SDUIContent: Codable, Hashable {
    public let refreshable: Bool
    public let scrollable: Bool
    public let searchable: Bool?
    public let sections: [SDUISection]?

    enum CodingKeys: String, CodingKey {
        case refreshable = "refreshable"
        case scrollable = "scrollable"
        case searchable = "searchable"
        case sections = "sections"
    }

    public init(refreshable: Bool, scrollable: Bool, searchable: Bool?, sections: [SDUISection]?) {
        self.refreshable = refreshable
        self.scrollable = scrollable
        self.searchable = searchable
        self.sections = sections
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUISection



public enum SDUIHeaderType: String, Codable, Hashable {
    case header = "HEADER"
    case product = "PRODUCT"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeaderBase


public enum SDUIPurpleType: String, Codable, Hashable {
    case header = "HEADER"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeaderProduct
public struct SDUIHeaderProduct: Codable, Hashable {
    public let displayMode: SDUIDisplayMode?
    public let id: String
    public let product: SDUIProduct
    public let scrollable: Bool
    public let title: String
    public let type: SDUIComponentType

    enum CodingKeys: String, CodingKey {
        case displayMode = "display_mode"
        case id = "id"
        case product = "product"
        case scrollable = "scrollable"
        case title = "title"
        case type = "type"
    }

    public init(displayMode: SDUIDisplayMode?, id: String, product: SDUIProduct, scrollable: Bool, title: String, type: SDUIComponentType) {
        self.displayMode = displayMode
        self.id = id
        self.product = product
        self.scrollable = scrollable
        self.title = title
        self.type = type
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUINavigationLink


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

public enum SDUIComponent: Codable, Equatable, Hashable {
    case product(SDUIComponentProduct)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIComponentType(rawValue: decoder.decodeType())

        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}

public enum SDUIHeader: Codable, Equatable, Hashable {
    case product(SDUIHeaderProduct)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIHeaderType(rawValue: decoder.decodeType())

        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}

public enum SDUIAction: Codable, Equatable, Hashable {
    case sheet(SDUISheet)
    case alert(SDUIAlert)
    case navigationLink(SDUINavigationLink)
    case productBuy(SDUIProductBuy)
    case productLike(SDUIProductLike)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIActionType(rawValue: decoder.decodeType())

        switch type {
        case .sheet: self = try .sheet(decoder.decodeSingleValueContainer())
        case .alert: self = try .alert(decoder.decodeSingleValueContainer())
        case .navigationLink: self = try .navigationLink(decoder.decodeSingleValueContainer())
        case .productBuy: self = try .productBuy(decoder.decodeSingleValueContainer())
        case .productLike: self = try .productLike(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}
