//
//  File.swift
//  
//
//  Created by Dylan on 16/05/2022.
//

import SwiftUI
import UIKit

extension Color {
    static func SDUI(color: SDUIColor?) -> Color {
        switch color {
        case .blue: return Color.blue
        case .red: return Color.red
        case .none: return (UIScreen.main.traitCollection.userInterfaceStyle == .dark) ? Color.white : Color.black
        // etc...
        }
    }
}
