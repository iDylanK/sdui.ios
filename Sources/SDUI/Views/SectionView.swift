//
//  SwiftUIView.swift
//  
//
//  Created by Dylan on 18/05/2022.
//

import SwiftUI

struct SectionView: View {
    var section: SDUISection
    
    var body: some View {
        VStack {
            if let components = self.section.components {
                ForEach(components, id: \.self) { component in
                    ComponentView(component: component)
                }
            }
        }
    }
}
