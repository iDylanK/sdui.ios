//
//  Codable+Extensions.swift
//  Core
//
//  Created by Tim van Steenis on 26/05/2020.
//  Copyright © 2020 Q42. All rights reserved.
//

import Foundation

// based on primephonic

private enum CodingKeys: String, CodingKey {
  case type = "type"
  case subtype = "subtype"
}

public extension Decoder {
  func decodeType<Type: Decodable>() throws -> Type {
    let typeContainer = try container(keyedBy: CodingKeys.self)
    return try typeContainer.decode(Type.self, forKey: .type)
  }

  func decodeSubType<Type: Decodable>() throws -> Type {
    let typeContainer = try container(keyedBy: CodingKeys.self)
    return try typeContainer.decode(Type.self, forKey: .subtype)
  }

  func decodeSingleValueContainer<Value: Decodable>() throws -> Value {
    let valueContainer = try singleValueContainer()
    return try valueContainer.decode(Value.self)
  }

  /**
   Tries to decode the current singleValueContainer with the ApiUnknownTypedObject, otherwise it will create a new object
   */
  func decodeUnknownTypedObject(rawType: String) throws -> ApiUnknownTypedObject {
    // if we encoded it ourselfs, then we want to try and retrieve the value which the API once gave us
    if rawType == ApiUnknownTypedObject.typeKey {
      return try decodeSingleValueContainer()
    } else {
      return .init(apiType: rawType)
    }
  }
}

public extension Encoder {
  func encodeSingleValueContainer<Value: Encodable>(value: Value) throws {
    var container = singleValueContainer()
    try container.encode(value)
  }
}

public struct ApiUnknownTypedObject: Codable, Hashable {
  private let type: String
  public let apiType: String

  static let typeKey: String = "___unknown"

  init(apiType: String) {
    type = ApiUnknownTypedObject.typeKey
    self.apiType = apiType
  }

  enum CodingKeys: String, CodingKey, CaseIterable {
    case type = "type"
    case apiType = "unknownApiType"
  }
}
