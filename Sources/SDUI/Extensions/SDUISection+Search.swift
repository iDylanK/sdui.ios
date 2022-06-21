//
//  SDUISection+Search.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import Foundation

extension Array where Element == SDUISection {
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

    func filter() -> [SDUISection] {
        guard let delegate = ServerDrivenUI.shared.filterDelegate else { return self }

        return self.map { section -> SDUISection in
            var section: SDUISection = section
            section.components = section.components?.filter { component in
                guard let custom = component.custom() else { return true }
                return delegate.componentFilter(custom)
            }
            return section
        }
        .filter { section in
            section.components?.isEmpty != true
        }
    }
}
