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



public enum SDUIPlaceHolderType: String, Codable, Hashable {
    case example = "EXAMPLE"
    case product = "PRODUCT"
}

public enum SDUIActionType: String, Codable, Hashable {
    case alert = "ALERT"
    case navigationLink = "NAVIGATION_LINK"
    case productBuy = "PRODUCT_BUY"
    case share = "SHARE"
    case sheet = "SHEET"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIActionBase




public struct SDUIPrimaryButton: Codable, Hashable {
    public let action: SDUIAction?
    public let title: String

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case title = "title"
    }

    public init(action: SDUIAction?, title: String) {
        self.action = action
        self.title = title
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIProduct
public struct SDUIProduct: Codable, Hashable {
    public let category: SDUIProductCategory
    public let content: String
    public let id: String
    public let image: String

    enum CodingKeys: String, CodingKey {
        case category = "category"
        case content = "content"
        case id = "id"
        case image = "image"
    }

    public init(category: SDUIProductCategory, content: String, id: String, image: String) {
        self.category = category
        self.content = content
        self.id = id
        self.image = image
    }
}

public enum SDUIProductCategory: String, Codable, Hashable {
    case drink = "DRINK"
    case food = "FOOD"
    case library = "LIBRARY"
}

public enum SDUIComponentType: String, Codable, Hashable {
    case basic = "BASIC"
    case product = "PRODUCT"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIContent


public enum SDUIPurpleType: String, Codable, Hashable {
    case example = "EXAMPLE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIFilterHeader
public struct SDUIFilterHeader: Codable, Hashable {
    public let action: SDUIAction?
    public let displayMode: SDUIDisplayMode?
    public let id: String
    public let scrollable: Bool
    public let title: String
    public let type: SDUIFilterHeaderType

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case displayMode = "display_mode"
        case id = "id"
        case scrollable = "scrollable"
        case title = "title"
        case type = "type"
    }

    public init(action: SDUIAction?, displayMode: SDUIDisplayMode?, id: String, scrollable: Bool, title: String, type: SDUIFilterHeaderType) {
        self.action = action
        self.displayMode = displayMode
        self.id = id
        self.scrollable = scrollable
        self.title = title
        self.type = type
    }
}

public enum SDUIFilterHeaderType: String, Codable, Hashable {
    case filter = "FILTER"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeader

public enum SDUIHeaderType: String, Codable, Hashable {
    case filter = "FILTER"
    case header = "HEADER"
    case product = "PRODUCT"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIMainHeader


public struct SDUIProductBuy: Codable, Hashable {
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let title: String
    public let titleRemove: String
    public let type: SDUIProductBuyType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case title = "title"
        case titleRemove = "title_remove"
        case type = "type"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, title: String, titleRemove: String, type: SDUIProductBuyType) {
        self.id = id
        self.placeHolder = placeHolder
        self.title = title
        self.titleRemove = titleRemove
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
    public let primaryButton: SDUIPrimaryButton?
    public let product: SDUIProduct
    public let searchable: String?
    public let type: SDUIProductComponentType

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case id = "id"
        case primaryButton = "primary_button"
        case product = "product"
        case searchable = "searchable"
        case type = "type"
    }

    public init(action: SDUIAction?, id: String, primaryButton: SDUIPrimaryButton?, product: SDUIProduct, searchable: String?, type: SDUIProductComponentType) {
        self.action = action
        self.id = id
        self.primaryButton = primaryButton
        self.product = product
        self.searchable = searchable
        self.type = type
    }
}

public enum SDUIProductComponentType: String, Codable, Hashable {
    case product = "PRODUCT"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIProductHeader
public struct SDUIProductHeader: Codable, Hashable {
    public let action: SDUIAction?
    public let displayMode: SDUIDisplayMode?
    public let id: String
    public let primaryButton: SDUIPrimaryButton
    public let product: SDUIProduct
    public let scrollable: Bool
    public let title: String
    public let type: SDUIProductComponentType

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case displayMode = "display_mode"
        case id = "id"
        case primaryButton = "primary_button"
        case product = "product"
        case scrollable = "scrollable"
        case title = "title"
        case type = "type"
    }

    public init(action: SDUIAction?, displayMode: SDUIDisplayMode?, id: String, primaryButton: SDUIPrimaryButton, product: SDUIProduct, scrollable: Bool, title: String, type: SDUIProductComponentType) {
        self.action = action
        self.displayMode = displayMode
        self.id = id
        self.primaryButton = primaryButton
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

// MARK: - SDUIProductPlaceHolder
public struct SDUIProductPlaceHolder: Codable, Hashable {
    public let image: String
    public let title: String
    public let type: SDUIProductComponentType

    enum CodingKeys: String, CodingKey {
        case image = "image"
        case title = "title"
        case type = "type"
    }

    public init(image: String, title: String, type: SDUIProductComponentType) {
        self.image = image
        self.title = title
        self.type = type
    }
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
    case product(SDUIProductComponent)
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
    case product(SDUIProductHeader)
    case filter(SDUIFilterHeader)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIHeaderType(rawValue: decoder.decodeType())

        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        case .filter: self = try .filter(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}

public enum SDUIAction: Codable, Equatable, Hashable {
    case sheet(SDUISheet)
    case alert(SDUIAlert)
    case navigationLink(SDUINavigationLink)
    case share(SDUIShare)
    case productBuy(SDUIProductBuy)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIActionType(rawValue: decoder.decodeType())

        switch type {
        case .sheet: self = try .sheet(decoder.decodeSingleValueContainer())
        case .alert: self = try .alert(decoder.decodeSingleValueContainer())
        case .navigationLink: self = try .navigationLink(decoder.decodeSingleValueContainer())
        case .share: self = try .share(decoder.decodeSingleValueContainer())
        case .productBuy: self = try .productBuy(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}

public enum SDUIPlaceHolder: Codable, Equatable, Hashable {
    case product(SDUIProductPlaceHolder)
    case empty(SDUIEmpty)

    public init(from decoder: Decoder) throws {
        let type = try SDUIPlaceHolderType(rawValue: decoder.decodeType())

        switch type {
        case .product: self = try .product(decoder.decodeSingleValueContainer())
        default: self = try .empty(decoder.decodeSingleValueContainer())
        }
    }
}
