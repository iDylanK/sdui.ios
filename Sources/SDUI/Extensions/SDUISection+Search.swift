//
//  SDUISection+Search.swift
//  
//
//  Created by Dylan on 15/06/2022.
//

import Foundation

extension Array where Element == SDUISection {
    func search(value: String) -> [SDUISection] {
        if value.isEmpty { return self }
        
        return self.filter { section in
            section.components?.search(value: value).count != 0
        }
    }
}
