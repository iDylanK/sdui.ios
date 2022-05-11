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
    public let button: SDUIButton?
    public let cell: SDUICell?
    public let color: SDUIColor?
    public let component: SDUIComponent?
    public let custom: SDUICustom?
    public let customBase: SDUICustomBase?
    public let customSample: SDUICustomSample?
    public let hStack: SDUIHStack?
    public let image: SDUIImage?
    public let list: SDUIList?
    public let post: SDUIPost?
    public let postList: SDUIPostList?
    public let posts: [SDUIPost]?
    public let progressView: SDUIProgressView?
    public let screen: SDUIScreen?
    public let sheet: SDUISheet?
    public let text: SDUIText?
    public let view: SDUIView?
    public let vStack: SDUIVStack?

    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case actionBase = "ActionBase"
        case alert = "Alert"
        case button = "Button"
        case cell = "Cell"
        case color = "Color"
        case component = "Component"
        case custom = "Custom"
        case customBase = "CustomBase"
        case customSample = "CustomSample"
        case hStack = "HStack"
        case image = "Image"
        case list = "List"
        case post = "Post"
        case postList = "PostList"
        case posts = "Posts"
        case progressView = "ProgressView"
        case screen = "Screen"
        case sheet = "Sheet"
        case text = "Text"
        case view = "View"
        case vStack = "VStack"
    }

    public init(action: SDUIAction?, actionBase: SDUIActionBase?, alert: SDUIAlert?, button: SDUIButton?, cell: SDUICell?, color: SDUIColor?, component: SDUIComponent?, custom: SDUICustom?, customBase: SDUICustomBase?, customSample: SDUICustomSample?, hStack: SDUIHStack?, image: SDUIImage?, list: SDUIList?, post: SDUIPost?, postList: SDUIPostList?, posts: [SDUIPost]?, progressView: SDUIProgressView?, screen: SDUIScreen?, sheet: SDUISheet?, text: SDUIText?, view: SDUIView?, vStack: SDUIVStack?) {
        self.action = action
        self.actionBase = actionBase
        self.alert = alert
        self.button = button
        self.cell = cell
        self.color = color
        self.component = component
        self.custom = custom
        self.customBase = customBase
        self.customSample = customSample
        self.hStack = hStack
        self.image = image
        self.list = list
        self.post = post
        self.postList = postList
        self.posts = posts
        self.progressView = progressView
        self.screen = screen
        self.sheet = sheet
        self.text = text
        self.view = view
        self.vStack = vStack
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

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIButton
public struct SDUIButton: Codable, Hashable {
    public let action: SDUIAction?
    public let color: SDUIColor?
    public let title: String
    public let type: SDUIButtonType

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case color = "color"
        case title = "title"
        case type = "type"
    }

    public init(action: SDUIAction?, color: SDUIColor?, title: String, type: SDUIButtonType) {
        self.action = action
        self.color = color
        self.title = title
        self.type = type
    }
}

public enum SDUIColor: String, Codable, Hashable {
    case blue = "BLUE"
    case red = "RED"
}

public enum SDUIButtonType: String, Codable, Hashable {
    case button = "BUTTON"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIComponent
public struct SDUIComponent: Codable, Hashable {
    public let color: SDUIColor?
    public let content: String?
    public let type: SDUIComponentType
    public let action: SDUIAction?
    public let title: String?
    public let components: [SDUIComponent]?
    public let cells: [SDUICell]?
    public let url: String?
    public let customType: SDUIComponentCustomType?
    public let message: String?

    enum CodingKeys: String, CodingKey {
        case color = "color"
        case content = "content"
        case type = "type"
        case action = "action"
        case title = "title"
        case components = "components"
        case cells = "cells"
        case url = "url"
        case customType = "custom_type"
        case message = "message"
    }

    public init(color: SDUIColor?, content: String?, type: SDUIComponentType, action: SDUIAction?, title: String?, components: [SDUIComponent]?, cells: [SDUICell]?, url: String?, customType: SDUIComponentCustomType?, message: String?) {
        self.color = color
        self.content = content
        self.type = type
        self.action = action
        self.title = title
        self.components = components
        self.cells = cells
        self.url = url
        self.customType = customType
        self.message = message
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUICell
public struct SDUICell: Codable, Hashable {
    public let action: SDUIAction?
    public let components: [SDUIComponent]?
    public let id: Double

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case components = "components"
        case id = "id"
    }

    public init(action: SDUIAction?, components: [SDUIComponent]?, id: Double) {
        self.action = action
        self.components = components
        self.id = id
    }
}

public enum SDUIComponentCustomType: String, Codable, Hashable {
    case postList = "POST_LIST"
    case sample = "SAMPLE"
}

public enum SDUIComponentType: String, Codable, Hashable {
    case button = "BUTTON"
    case custom = "CUSTOM"
    case hstack = "HSTACK"
    case image = "IMAGE"
    case list = "LIST"
    case progressView = "PROGRESS_VIEW"
    case text = "TEXT"
    case vstack = "VSTACK"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUICustom
public struct SDUICustom: Codable, Hashable {
    public let customType: SDUIComponentCustomType
    public let message: String?
    public let type: SDUICustomType
    public let title: String?

    enum CodingKeys: String, CodingKey {
        case customType = "custom_type"
        case message = "message"
        case type = "type"
        case title = "title"
    }

    public init(customType: SDUIComponentCustomType, message: String?, type: SDUICustomType, title: String?) {
        self.customType = customType
        self.message = message
        self.type = type
        self.title = title
    }
}

public enum SDUICustomType: String, Codable, Hashable {
    case custom = "CUSTOM"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUICustomBase
public struct SDUICustomBase: Codable, Hashable {
    public let customType: SDUICustomBaseCustomType
    public let type: SDUICustomType

    enum CodingKeys: String, CodingKey {
        case customType = "custom_type"
        case type = "type"
    }

    public init(customType: SDUICustomBaseCustomType, type: SDUICustomType) {
        self.customType = customType
        self.type = type
    }
}

public enum SDUICustomBaseCustomType: String, Codable, Hashable {
    case sample = "SAMPLE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUICustomSample
public struct SDUICustomSample: Codable, Hashable {
    public let customType: SDUICustomBaseCustomType
    public let message: String?
    public let type: SDUICustomType

    enum CodingKeys: String, CodingKey {
        case customType = "custom_type"
        case message = "message"
        case type = "type"
    }

    public init(customType: SDUICustomBaseCustomType, message: String?, type: SDUICustomType) {
        self.customType = customType
        self.message = message
        self.type = type
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIHStack
public struct SDUIHStack: Codable, Hashable {
    public let components: [SDUIComponent]?
    public let type: SDUIHStackType

    enum CodingKeys: String, CodingKey {
        case components = "components"
        case type = "type"
    }

    public init(components: [SDUIComponent]?, type: SDUIHStackType) {
        self.components = components
        self.type = type
    }
}

public enum SDUIHStackType: String, Codable, Hashable {
    case hstack = "HSTACK"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIImage
public struct SDUIImage: Codable, Hashable {
    public let type: SDUIImageType
    public let url: String

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case url = "url"
    }

    public init(type: SDUIImageType, url: String) {
        self.type = type
        self.url = url
    }
}

public enum SDUIImageType: String, Codable, Hashable {
    case image = "IMAGE"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIList
public struct SDUIList: Codable, Hashable {
    public let cells: [SDUICell]
    public let type: SDUIListType

    enum CodingKeys: String, CodingKey {
        case cells = "cells"
        case type = "type"
    }

    public init(cells: [SDUICell], type: SDUIListType) {
        self.cells = cells
        self.type = type
    }
}

public enum SDUIListType: String, Codable, Hashable {
    case list = "LIST"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIPost
public struct SDUIPost: Codable, Hashable {
    public let id: String
    public let imageUrl: String
    public let message: String
    public let title: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case imageUrl = "image_url"
        case message = "message"
        case title = "title"
    }

    public init(id: String, imageUrl: String, message: String, title: String) {
        self.id = id
        self.imageUrl = imageUrl
        self.message = message
        self.title = title
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIPostList
public struct SDUIPostList: Codable, Hashable {
    public let customType: SDUIPostListCustomType
    public let message: String?
    public let title: String?
    public let type: SDUICustomType

    enum CodingKeys: String, CodingKey {
        case customType = "custom_type"
        case message = "message"
        case title = "title"
        case type = "type"
    }

    public init(customType: SDUIPostListCustomType, message: String?, title: String?, type: SDUICustomType) {
        self.customType = customType
        self.message = message
        self.title = title
        self.type = type
    }
}

public enum SDUIPostListCustomType: String, Codable, Hashable {
    case postList = "POST_LIST"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIProgressView
public struct SDUIProgressView: Codable, Hashable {
    public let title: String?
    public let type: SDUIProgressViewType

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case type = "type"
    }

    public init(title: String?, type: SDUIProgressViewType) {
        self.title = title
        self.type = type
    }
}

public enum SDUIProgressViewType: String, Codable, Hashable {
    case progressView = "PROGRESS_VIEW"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIScreen
public struct SDUIScreen: Codable, Hashable {
    public let data: JSONAny?
    public let view: SDUIView?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case view = "view"
    }

    public init(data: JSONAny?, view: SDUIView?) {
        self.data = data
        self.view = view
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIView
public struct SDUIView: Codable, Hashable {
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

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIText
public struct SDUIText: Codable, Hashable {
    public let color: SDUIColor?
    public let content: String
    public let type: SDUITextType

    enum CodingKeys: String, CodingKey {
        case color = "color"
        case content = "content"
        case type = "type"
    }

    public init(color: SDUIColor?, content: String, type: SDUITextType) {
        self.color = color
        self.content = content
        self.type = type
    }
}

public enum SDUITextType: String, Codable, Hashable {
    case text = "TEXT"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SDUIVStack
public struct SDUIVStack: Codable, Hashable {
    public let components: [SDUIComponent]?
    public let type: SDUIVStackType

    enum CodingKeys: String, CodingKey {
        case components = "components"
        case type = "type"
    }

    public init(components: [SDUIComponent]?, type: SDUIVStackType) {
        self.components = components
        self.type = type
    }
}

public enum SDUIVStackType: String, Codable, Hashable {
    case vstack = "VSTACK"
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
