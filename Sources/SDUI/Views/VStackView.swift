//
//  VStackView.swift
//  
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct VStackView: View {
    var vstack: SDUIVStack
    
    var body: some View  {
        VStack {
            ForEach(vstack.components ?? [], id: \.self) { component in
                ComponentView(component: component)
            }
        }
    }
}
