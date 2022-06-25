//
//  NavigationBarItem+DisplayMode.swift
//  
//
//  Created by Dylan on 02/06/2022.
//

import SwiftUI

extension NavigationBarItem.TitleDisplayMode {
    /// Translates a SDUIDisplayMode data struct to the correct NavigationBarItem.TitleDisplayMode.
    /// - Parameter mode: Display mode from api.
    /// - Returns: Matching NavigationBarItem.TitleDisplayMode
    static func sdui(_ mode: SDUIDisplayMode?) -> NavigationBarItem.TitleDisplayMode {
        switch mode {
        case .some(.automatic): return .automatic
        case .some(.inline): return .inline
        case .some(.large): return .large
        case .none: return .inline
        }
    }
}
