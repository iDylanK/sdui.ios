//
//  SDUIComponent.swift
//  sdui (iOS)
//
//  Created by Dylan on 20/05/2022.
//

import Foundation

// MARK: - SDUIComponent
public struct SDUIComponent: Codable, Hashable {
    public let product: SDUIProduct?
    public let type: SDUIType

    enum CodingKeys: String, CodingKey {
        case product = "product"
        case type = "type"
    }

    public init(product: SDUIProduct, type: SDUIType) {
        self.product = product
        self.type = type
    }
}

public enum SDUIType: String, Codable, Hashable {
    case product = "PRODUCT"
}

// MARK: - sduiProduct
public struct SDUIProduct: Codable, Hashable {
    public let content: String
    public let image: String

    enum CodingKeys: String, CodingKey {
        case content = "content"
        case image = "image"
    }

    public init(content: String, image: String) {
        self.content = content
        self.image = image
    }
}
