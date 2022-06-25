//
//  SDUISection+Search.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import Foundation

extension Array where Element == SDUISection {
    /// Filters the array of sections by a given search value. The search value and the section searable values
    /// are trimmed and matched using a case insensitive comparison.
    /// - Parameter value: The search string to math a component's searchable value with.
    /// - Returns: New list of sections containing at least 1 component matching the search value.
    func search(value: String) -> [SDUISection] {
        self.map { section in
            var section = section
            section.components = section.components?.filter { component in
                return component.base().searchable?
                    .trimmingCharacters(in: .whitespaces)
                    .localizedCaseInsensitiveContains(value.trimmingCharacters(in: .whitespaces)) ?? false
            }
            return section
        }
        .filter { section in
            section.components?.isEmpty != true
        }
    }

    /// Filters the array of sections by a a project defined filter delegate.
    /// - Returns: New list of sections containing at least 1 component matching the filter criteria.
    func filter() -> [SDUISection] {
        guard let delegate = ServerDrivenUI.shared.componentDelegate else { return self }

        return self.map { section -> SDUISection in
            var section: SDUISection = section
            section.components = section.components?.filter { component in
                guard let custom = component.custom() else { return true }
                return delegate.filter(component: custom)
            }
            return section
        }
        .filter { section in
            section.components?.isEmpty != true
        }
    }
}
