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

// MARK: - SDUISchema



public enum SDUIPlaceHolderType: String, Codable, Hashable {
    case example = "EXAMPLE"
}

public enum SDUIActionType: String, Codable, Hashable {
    case alert = "ALERT"
    case navigationLink = "NAVIGATION_LINK"
    case share = "SHARE"
    case sheet = "SHEET"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIActionBase
public struct SDUIActionBase: Codable, Hashable {
    public var id: String
    public var placeHolder: SDUIPlaceHolder?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?) {
        self.id = id
        self.placeHolder = placeHolder
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIAlert
public struct SDUIAlert: Codable, Hashable {
    public var id: String
    public var message: String?
    public var placeHolder: SDUIPlaceHolder?
    public var title: String?
    public var type: SDUIAlertType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case message = "message"
        case placeHolder = "place_holder"
        case title = "title"
        case type = "type"
    }

    public init(id: String, message: String?, placeHolder: SDUIPlaceHolder?, title: String?, type: SDUIAlertType) {
        self.id = id
        self.message = message
        self.placeHolder = placeHolder
        self.title = title
        self.type = type
    }
}

public enum SDUIAlertType: String, Codable, Hashable {
    case alert = "ALERT"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIBaseComponent
public struct SDUIBaseComponent: Codable, Hashable {
    public var action: SDUIAction?
    public var id: String
    public var searchable: String?

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case id = "id"
        case searchable = "searchable"
    }

    public init(action: SDUIAction?, id: String, searchable: String?) {
        self.action = action
        self.id = id
        self.searchable = searchable
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIBaseHeader
public struct SDUIBaseHeader: Codable, Hashable {
    public var action: SDUIAction?
    public var displayMode: SDUIDisplayMode?
    public var id: String
    public var scrollable: Bool
    public var title: String

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case displayMode = "display_mode"
        case id = "id"
        case scrollable = "scrollable"
        case title = "title"
    }

    public init(action: SDUIAction?, displayMode: SDUIDisplayMode?, id: String, scrollable: Bool, title: String) {
        self.action = action
        self.displayMode = displayMode
        self.id = id
        self.scrollable = scrollable
        self.title = title
    }
}

public enum SDUIDisplayMode: String, Codable, Hashable {
    case automatic = "AUTOMATIC"
    case inline = "INLINE"
    case large = "LARGE"
}

public enum SDUIColor: String, Codable, Hashable {
    case blue = "BLUE"
    case red = "RED"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIComponent

public struct SDUIContent: Codable, Hashable {
    public var refreshable: Bool
    public var scrollable: Bool
    public var searchable: Bool?
    public var sections: [SDUISection]?

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
public struct SDUISection: Codable, Hashable {
    public var components: [SDUIComponent]?
    public var title: String?

    enum CodingKeys: String, CodingKey {
        case components = "components"
        case title = "title"
    }

    public init(components: [SDUIComponent]?, title: String?) {
        self.components = components
        self.title = title
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeader

public enum SDUIHeaderType: String, Codable, Hashable {
    case header = "HEADER"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUINavigationLink
public struct SDUINavigationLink: Codable, Hashable {
    public var id: String
    public var placeHolder: SDUIPlaceHolder?
    public var type: SDUINavigationLinkType
    public var url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUINavigationLinkType, url: String) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
        self.url = url
    }
}

public enum SDUINavigationLinkType: String, Codable, Hashable {
    case navigationLink = "NAVIGATION_LINK"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIScreen
public struct SDUIScreen: Codable, Hashable {
    public var content: SDUIContent?
    public var header: SDUIHeader?
    public var id: String
    public var type: SDUIScreenType

    enum CodingKeys: String, CodingKey {
        case content = "content"
        case header = "header"
        case id = "id"
        case type = "type"
    }

    public init(content: SDUIContent?, header: SDUIHeader?, id: String, type: SDUIScreenType) {
        self.content = content
        self.header = header
        self.id = id
        self.type = type
    }
}

public enum SDUIScreenType: String, Codable, Hashable {
    case contentView = "CONTENT_VIEW"
    case list = "LIST"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIShare
public struct SDUIShare: Codable, Hashable {
    public var id: String
    public var placeHolder: SDUIPlaceHolder?
    public var type: SDUIShareType
    public var url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUIShareType, url: String) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
        self.url = url
    }
}

public enum SDUIShareType: String, Codable, Hashable {
    case share = "SHARE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUISheet
public struct SDUISheet: Codable, Hashable {
    public var id: String
    public var placeHolder: SDUIPlaceHolder?
    public var type: SDUISheetType
    public var url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUISheetType, url: String) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
        self.url = url
    }
}

public enum SDUISheetType: String, Codable, Hashable {
    case sheet = "SHEET"
}
