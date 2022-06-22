//
//  SDUIState.swift
//  
//
//  Created by Dylan on 11/05/2022.
//

import Foundation
import SwiftUI

public class SDUIState: ObservableObject {
    @Published var alert: SDUIAlert?
    @Published var sheet: SDUISheet?
    @Published var share: SDUIShare?

    @Published var isLoading = true
    @Published var screen: SDUIScreen?

    @Published var sections: [SDUISection]?

    @Published var search = ""

    var viewUrl: String?

    public init() { }

    public func getView(viewUrl: String? = nil) {
        if let url = viewUrl { self.viewUrl = url }

        // MARK: Timer is here for placeholder testing
        Timer.scheduledTimer(withTimeInterval: 0.0, repeats: false) { _ in
            ServerDrivenUI.shared.dataSource?.getView(with: self.viewUrl) { screen in
                DispatchQueue.main.async {
                    self.screen = screen
                    self.isLoading = false
                    self.sections = screen.content?.sections
                }
            }
        }
    }

    func searchSections(filter: Bool = true) {
        if search.isEmpty { sections = self.screen?.content?.sections; filterSections(search: false); return }
        if filter { self.sections = self.screen?.content?.sections }
        self.sections = sections?.search(value: search)
        if filter { filterSections(search: false) }
    }

    public func filterSections(search: Bool = true) {
        if search { self.sections = self.screen?.content?.sections }
        self.sections = sections?.filter()
        if search { searchSections(filter: false) }
    }

    public func resetFilters() {
        self.sections = self.screen?.content?.sections
        searchSections()
    }

    public func alertBinding() -> Binding<Bool> {
        return Binding(get: {
            return self.alert != nil
        }, set: { _ in
            self.alert = nil
        })
    }

    public func sheetBinding() -> Binding<Bool> {
        return Binding(get: {
            return self.sheet != nil
        }, set: { _ in
            self.sheet = nil
        })
    }

    public func shareBinding() -> Binding<Bool> {
        return Binding(get: {
            return self.share != nil
        }, set: { _ in
            self.share = nil
        })
    }
}
