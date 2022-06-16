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


public struct SDUIPlaceHolder: Codable, Hashable {
    public let image: String
    public let title: String

    enum CodingKeys: String, CodingKey {
        case image = "image"
        case title = "title"
    }

    public init(image: String, title: String) {
        self.image = image
        self.title = title
    }
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
    public let id: String
    public let placeHolder: SDUIPlaceHolder?

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
    public let id: String
    public let message: String?
    public let placeHolder: SDUIPlaceHolder?
    public let title: String?
    public let type: SDUIPurpleType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case message = "message"
        case placeHolder = "place_holder"
        case title = "title"
        case type = "type"
    }

    public init(id: String, message: String?, placeHolder: SDUIPlaceHolder?, title: String?, type: SDUIPurpleType) {
        self.id = id
        self.message = message
        self.placeHolder = placeHolder
        self.title = title
        self.type = type
    }
}

public enum SDUIPurpleType: String, Codable, Hashable {
    case alert = "ALERT"
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
public struct SDUISection: Codable, Hashable {
    public let components: [SDUIComponent]?
    public let title: String?

    enum CodingKeys: String, CodingKey {
        case components = "components"
        case title = "title"
    }

    public init(components: [SDUIComponent]?, title: String?) {
        self.components = components
        self.title = title
    }
}

public enum SDUIDisplayMode: String, Codable, Hashable {
    case automatic = "AUTOMATIC"
    case inline = "INLINE"
    case large = "LARGE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeader

public struct SDUISheet: Codable, Hashable {
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let type: SDUIActionType
    public let url: String?
    public let message: String?
    public let title: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
        case message = "message"
        case title = "title"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUIActionType, url: String?, message: String?, title: String?) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
        self.url = url
        self.message = message
        self.title = title
    }
}

public enum SDUIHeaderType: String, Codable, Hashable {
    case header = "HEADER"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeaderBase

public struct SDUINavigationLink: Codable, Hashable {
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let type: SDUIFluffyType
    public let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUIFluffyType, url: String) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
        self.url = url
    }
}

public enum SDUIFluffyType: String, Codable, Hashable {
    case navigationLink = "NAVIGATION_LINK"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIScreen
public struct SDUIScreen: Codable, Hashable {
    public let content: SDUIContent?
    public let header: SDUIHeader?
    public let id: String
    public let type: SDUIScreenType

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
    public let id: String
    public let placeHolder: SDUIPlaceHolder?
    public let type: SDUITentacledType
    public let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case placeHolder = "place_holder"
        case type = "type"
        case url = "url"
    }

    public init(id: String, placeHolder: SDUIPlaceHolder?, type: SDUITentacledType, url: String) {
        self.id = id
        self.placeHolder = placeHolder
        self.type = type
        self.url = url
    }
}

public enum SDUITentacledType: String, Codable, Hashable {
    case share = "SHARE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUISheetClass


public enum SDUIStickyType: String, Codable, Hashable {
    case sheet = "SHEET"
}
