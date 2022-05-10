// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let apiSchema = try? JSONDecoder().decode(ApiSchema.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - ApiPost
public struct ApiPost: Codable, Hashable {
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
