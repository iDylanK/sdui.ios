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
    case share = "SHARE"
    case sheet = "SHEET"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIActionBase


public enum SDUIPurpleType: String, Codable, Hashable {
    case alert = "ALERT"
}



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


public struct SDUIComponentProduct: Codable, Hashable {
    public let action: SDUIAction?
    public let id: String
    public let primaryButton: SDUIPrimaryButton?
    public let product: SDUIProduct
    public let searchable: String?
    public let type: SDUIComponentType

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case id = "id"
        case primaryButton = "primary_button"
        case product = "product"
        case searchable = "searchable"
        case type = "type"
    }

    public init(action: SDUIAction?, id: String, primaryButton: SDUIPrimaryButton?, product: SDUIProduct, searchable: String?, type: SDUIComponentType) {
        self.action = action
        self.id = id
        self.primaryButton = primaryButton
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


public enum SDUIFluffyType: String, Codable, Hashable {
    case header = "HEADER"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeaderProduct
public struct SDUIHeaderProduct: Codable, Hashable {
    public let action: SDUISheet?
    public let displayMode: SDUIDisplayMode?
    public let id: String
    public let primaryButton: SDUIPrimaryButton
    public let product: SDUIProduct
    public let scrollable: Bool
    public let title: String
    public let type: SDUIComponentType

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

    public init(action: SDUISheet?, displayMode: SDUIDisplayMode?, id: String, primaryButton: SDUIPrimaryButton, product: SDUIProduct, scrollable: Bool, title: String, type: SDUIComponentType) {
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

// MARK: - SDUINavigationLink

public enum SDUITentacledType: String, Codable, Hashable {
    case navigationLink = "NAVIGATION_LINK"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIProductBuy
public struct SDUIProductBuy: Codable, Hashable {
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let title: String
    public let titleRemove: String
    public let type: SDUIStickyType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case title = "title"
        case titleRemove = "title_remove"
        case type = "type"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, title: String, titleRemove: String, type: SDUIStickyType) {
        self.id = id
        self.placeHolder = placeHolder
        self.title = title
        self.titleRemove = titleRemove
        self.type = type
    }
}

public enum SDUIStickyType: String, Codable, Hashable {
    case productBuy = "PRODUCT_BUY"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIScreen

public struct SDUIShare: Codable, Hashable {
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let type: SDUIIndigoType
    public let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUIIndigoType, url: String) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
        self.url = url
    }
}

public enum SDUIIndigoType: String, Codable, Hashable {
    case share = "SHARE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUISheetClass


public enum SDUIIndecentType: String, Codable, Hashable {
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
