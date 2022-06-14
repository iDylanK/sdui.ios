//
//  SDUIData.swift
//  sdui (iOS)
//
//  Created by Dylan on 14/06/2022.
//

import Foundation

public class SDUIData: ObservableObject {
    @Published public var shoppingCard: [String: Any] = [:]
    
    public init() {}
}
