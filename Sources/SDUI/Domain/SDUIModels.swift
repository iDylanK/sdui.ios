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
public struct SDUISchema: Codable, Hashable {
    public let action: SDUIAction?
    public let actionBase: SDUIActionBase?
    public let alert: SDUIAlert?
    public let color: SDUIColor?
    public let component: SDUIComponent?
    public let header: SDUIHeader?
    public let navigationLink: SDUINavigationLink?
    public let navigationView: SDUINavigationView?
    public let screen: SDUIScreen?
    public let screenType: SDUIScreenType?
    public let section: SDUISection?
    public let sheet: SDUISheet?
    public let view: SDUIView?

    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case actionBase = "ActionBase"
        case alert = "Alert"
        case color = "Color"
        case component = "Component"
        case header = "Header"
        case navigationLink = "NavigationLink"
        case navigationView = "NavigationView"
        case screen = "Screen"
        case screenType = "ScreenType"
        case section = "Section"
        case sheet = "Sheet"
        case view = "View"
    }

    public init(action: SDUIAction?, actionBase: SDUIActionBase?, alert: SDUIAlert?, color: SDUIColor?, component: SDUIComponent?, header: SDUIHeader?, navigationLink: SDUINavigationLink?, navigationView: SDUINavigationView?, screen: SDUIScreen?, screenType: SDUIScreenType?, section: SDUISection?, sheet: SDUISheet?, view: SDUIView?) {
        self.action = action
        self.actionBase = actionBase
        self.alert = alert
        self.color = color
        self.component = component
        self.header = header
        self.navigationLink = navigationLink
        self.navigationView = navigationView
        self.screen = screen
        self.screenType = screenType
        self.section = section
        self.sheet = sheet
        self.view = view
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIAction
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
public struct SDUIComponent: Codable, Hashable {
    public let action: SDUIAction?
    public let content: JSONAny?
    public let id: String

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case content = "content"
        case id = "id"
    }

    public init(action: SDUIAction?, content: JSONAny?, id: String) {
        self.action = action
        self.content = content
        self.id = id
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHeader
public struct SDUIHeader: Codable, Hashable {
    public let id: String
    public let scrollable: Bool

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case scrollable = "scrollable"
    }

    public init(id: String, scrollable: Bool) {
        self.id = id
        self.scrollable = scrollable
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUINavigationLink
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
    public let title: String

    enum CodingKeys: String, CodingKey {
        case title = "title"
    }

    public init(title: String) {
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
    public let navigationView: SDUINavigationView?
    public let type: SDUIScreenType
    public let view: SDUIView?

    enum CodingKeys: String, CodingKey {
        case header = "header"
        case navigationView = "navigation_view"
        case type = "type"
        case view = "view"
    }

    public init(header: SDUIHeader?, navigationView: SDUINavigationView?, type: SDUIScreenType, view: SDUIView?) {
        self.header = header
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

// MARK: - Encode/decode helpers

public class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

public class JSONAny: Codable {

    public let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
