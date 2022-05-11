//
//  HStackView.swift
//  
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct HStackView: View {
    var hstack: SDUIHStack
    
    var body: some View  {
        HStack {
            ForEach(hstack.components ?? [], id: \.self) { component in
                ComponentView(component: component)
            }
        }
    }
}
