//
//  SDUIState.swift
//  
//
//  Created by Dylan on 11/05/2022.
//

import Foundation
import SwiftUI

/// State model that holds all the information for one specific
/// SDUI View and its children. This is not global for SDUI views
/// originating from a difffent parent.
public class SDUIState: ObservableObject {
    /// The current Library's default alert action.
    @Published var alert: SDUIAlert?
    /// The current Library's default sheet action.
    @Published var sheet: SDUISheet?
    /// The current Library's default share action.
    @Published var share: SDUIShare?
    /// The current Library's default search actions' string.
    @Published var search = ""

    /// Puts the views in a loading state.
    @Published var isLoading = true

    /// Main View datastruct.
    @Published var screen: SDUIScreen?

    /// Sections that are filtered and searched. The main screen object
    /// contains the full list of sections.
    @Published var sections: [SDUISection]?

    /// Url where to fetch Screen information from. Passed from SDUIRootView.
    var viewUrl: String?

    public init() { }

    /// Gets the Screen datastruct by calling the API specified in the datasource.
    /// - Parameter viewUrl: Url where to get the data from.
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

    /// Search sections based on global search value.
    /// - Parameter filter: if true, also (re)apply filters after search.
    func searchSections(filter: Bool = true) {
        if search.isEmpty { sections = self.screen?.content?.sections; filterSections(search: false); return }
        if filter { self.sections = self.screen?.content?.sections }
        self.sections = sections?.search(value: search)
        if filter { filterSections(search: false) }
    }

    /// Filter sections based on project's filter information (specified as component delegate).
    /// This is handled in the sections array extension, containing the section filter function.
    /// - Parameter search: if true, also (re)apply search after filter.
    public func filterSections(search: Bool = true) {
        if search { self.sections = self.screen?.content?.sections }
        self.sections = sections?.filter()
        if search { searchSections(filter: false) }
    }

    /// Reset all the filters from the state and after re-apply the search criteria
    /// to the sections and components.
    public func resetFilters() {
        self.sections = self.screen?.content?.sections
        searchSections()
    }

    /// Alert binding
    /// - Returns: Binding bool that specifiies if alert is bound.
    public func alertBinding() -> Binding<Bool> {
        return Binding(get: {
            return self.alert != nil
        }, set: { _ in
            self.alert = nil
        })
    }

    /// Sheet binding
    /// - Returns: Binding bool that specifiies if sheet is bound.
    public func sheetBinding() -> Binding<Bool> {
        return Binding(get: {
            return self.sheet != nil
        }, set: { _ in
            self.sheet = nil
        })
    }

    /// Share binding
    /// - Returns: Binding bool that specifiies if share is bound.
    public func shareBinding() -> Binding<Bool> {
        return Binding(get: {
            return self.share != nil
        }, set: { _ in
            self.share = nil
        })
    }
}
