//
//  ErrorView.swift
//  sdui (iOS)
//
//  Created by Dylan on 08/04/2022.
//

import SwiftUI

public struct ErrorView: View {
    var error: String
    
    public init(error: String) { self.error = error }
    
    public var body: some View {
        Text(error)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: "")
    }
}
