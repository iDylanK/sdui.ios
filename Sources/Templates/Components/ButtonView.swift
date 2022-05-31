//
//  ButtonView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI
import SDUI

struct ButtonView: View {
    @EnvironmentObject var state: SDUIState
    
    var button: SDUIButton
    
    var body: some View  {
        Text("Button")
//        Button(button.title ?? "", action: {})
//
//        guard let action = button.action else { return button }
        
//        switch button.action?.type {
//        case .alert: Button(button.title, action: { state.alert = button.action })
//        case .sheet: Button(button.title, action: { state.sheet = button.action  })
//        default: Button(button.title, action: {})
//        }
        
    }
}

