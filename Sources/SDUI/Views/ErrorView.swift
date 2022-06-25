//
//  ErrorView.swift
//  sdui (iOS)
//
//  Created by Dylan on 08/04/2022.
//

import SwiftUI

/// Current default error screen only displaying a message.
public struct ErrorView: View {
    var error: String

    public init(error: String) { self.error = error }

    public var body: some View {
        Text(error)
    }
}
