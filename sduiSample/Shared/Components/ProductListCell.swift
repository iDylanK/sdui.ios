//
//  ProductListCell.swift
//  sdui (iOS)
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI
import SDUI

struct ProductListCell: View {
    @EnvironmentObject var sduiData: SDUIData

    var product: SDUIComponentProduct

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: product.product.image)) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.frame(width: 50, height: 50, alignment: .top)
            Text(product.product.content).foregroundColor(.black)

            if let primaryButton = product.primaryButton {
                Spacer()
                PrimaryButtonView(button: primaryButton, product: product.product)
            }

        }
    }
}
