//
//  ScreenView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ScreenView: View {
    var components: [SDUIComponent]?
    
    var body: some View {
        VStack {
            if let components = self.components {
                ForEach(components, id: \.self) { component in
                    ComponentView(component: component)
                }
            }
        }
    }
}
