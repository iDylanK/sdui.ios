//
//  PrimaryButtonView.swift
//  sdui (iOS)
//
//  Created by Dylan on 16/06/2022.
//

import SwiftUI

struct PrimaryButton: View {
    @Binding var buttonTitle: String

    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Text(buttonTitle)
                .frame(width: 200, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.white, lineWidth: 2)
                )
        }
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(25)
            .contentShape(Rectangle())
    }
}
