//
//  SDUIData.swift
//  sdui (iOS)
//
//  Created by Dylan on 14/06/2022.
//

import SwiftUI
import SDUI

public class SDUIData: ObservableObject {
    static let shared = SDUIData()

    @Published public var shoppingCard: [String: Bool] = [:]
    @Published public var filters: [SDUIProductCategory: Bool] = [:]

    public init() {}

    func filterBinding(for key: SDUIProductCategory) -> Binding<Bool> {
        return .init(
            get: { self.filters[key, default: false] },
            set: { self.filters[key] = $0 })
    }

    func resetFilters() {
        filters = [:]
    }
}
