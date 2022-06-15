//
//  SDUIComponent+Search.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import Foundation

extension Array where Element == SDUIComponent {
    func search(value: String) -> [SDUIComponent] {
        if value.isEmpty { return self }
        
        return self.filter { component in
            component.searchable?.trimmingCharacters(in: .whitespaces)
                .localizedCaseInsensitiveContains(value.trimmingCharacters(in: .whitespaces)) ?? false
        }
    }
}
