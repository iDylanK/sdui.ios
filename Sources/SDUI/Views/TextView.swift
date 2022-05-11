//
//  TextView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct TextView: View {
    var text: SDUIText
    
    var body: some View {
        Text(text.content).foregroundColor(Color.SDUI(color: text.color))
    }
}
