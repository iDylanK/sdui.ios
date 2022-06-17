//
//  ProductHeader.swift
//  sdui
//
//  Created by Dylan on 01/06/2022.
//

import Foundation
import SwiftUI
import SDUI

struct ProductHeader: View {
    @EnvironmentObject var sduiData: SDUIData

    var product: SDUIHeaderProduct

    var body: some View {
        HStack {
            Spacer()
            AsyncImage(url: URL(string: product.product.image)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.frame(height: 150)
            Spacer()
        }

        HStack {
            Spacer()
            Text(product.product.content).bold()
            Spacer()
        }

        HStack {
            Spacer()
            PrimaryButtonView(button: product.primaryButton, product: product.product)
            Spacer()
        }

    }

}
