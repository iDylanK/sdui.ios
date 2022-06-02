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


public struct SDUIAction: Codable, Hashable {
    public let id: String
    public let type: SDUIActionType
    public let url: String?
    public let message: String?
    public let title: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case url = "url"
        case message = "message"
        case title = "title"
    }

    public init(id: String, type: SDUIActionType, url: String?, message: String?, title: String?) {
        self.id = id
        self.type = type
        self.url = url
        self.message = message
        self.title = title
    }
}

public enum SDUIActionType: String, Codable, Hashable {
    case alert = "ALERT"
    case navigationLink = "NAVIGATION_LINK"
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

    enum CodingKeys: String, CodingKey {
        case id = "id"
    }

    public init(id: String) {
        self.id = id
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
    public let title: String?
    public let type: SDUIAlertType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case message = "message"
        case title = "title"
        case type = "type"
    }

    public init(id: String, message: String?, title: String?, type: SDUIAlertType) {
        self.id = id
        self.message = message
        self.title = title
        self.type = type
    }
}

public enum SDUIAlertType: String, Codable, Hashable {
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


public struct SDUINavigationLink: Codable, Hashable {
    public let id: String
    public let type: SDUINavigationLinkType
    public let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case url = "url"
    }

    public init(id: String, type: SDUINavigationLinkType, url: String) {
        self.id = id
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

// MARK: - SDUINavigationView
public struct SDUINavigationView: Codable, Hashable {
    public let displayMode: SDUIDisplayMode?
    public let title: String

    enum CodingKeys: String, CodingKey {
        case displayMode = "display_mode"
        case title = "title"
    }

    public init(displayMode: SDUIDisplayMode?, title: String) {
        self.displayMode = displayMode
        self.title = title
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIScreen
public struct SDUIScreen: Codable, Hashable {
    public let header: SDUIHeader?
    public let id: String
    public let navigationView: SDUINavigationView?
    public let type: SDUIScreenType
    public let view: SDUIView?

    enum CodingKeys: String, CodingKey {
        case header = "header"
        case id = "id"
        case navigationView = "navigation_view"
        case type = "type"
        case view = "view"
    }

    public init(header: SDUIHeader?, id: String, navigationView: SDUINavigationView?, type: SDUIScreenType, view: SDUIView?) {
        self.header = header
        self.id = id
        self.navigationView = navigationView
        self.type = type
        self.view = view
    }
}

public enum SDUIScreenType: String, Codable, Hashable {
    case list = "LIST"
    case views = "VIEWS"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIView
public struct SDUIView: Codable, Hashable {
    public let refreshable: Bool
    public let scrollable: Bool
    public let sections: [SDUISection]?

    enum CodingKeys: String, CodingKey {
        case refreshable = "refreshable"
        case scrollable = "scrollable"
        case sections = "sections"
    }

    public init(refreshable: Bool, scrollable: Bool, sections: [SDUISection]?) {
        self.refreshable = refreshable
        self.scrollable = scrollable
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

    enum CodingKeys: String, CodingKey {
        case components = "components"
    }

    public init(components: [SDUIComponent]?) {
        self.components = components
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUISheet
public struct SDUISheet: Codable, Hashable {
    public let id: String
    public let type: SDUISheetType
    public let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case url = "url"
    }

    public init(id: String, type: SDUISheetType, url: String) {
        self.id = id
        self.type = type
        self.url = url
    }
}

public enum SDUISheetType: String, Codable, Hashable {
    case sheet = "SHEET"
}
