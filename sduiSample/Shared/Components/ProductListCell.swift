//
//  ProductListCell.swift
//  sdui (iOS)
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI
import SDUI

struct ProductListCell: View {
    var product: SDUIProduct
    var action: SDUIProductLike?

    @EnvironmentObject var sduiData: SDUIData
    @State var bought = false

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.frame(width: 50, height: 50, alignment: .top)
            Text(product.content).foregroundColor(.black)

            if action != nil {
                Spacer()
                Button {
                    sduiData.shoppingCard[product.id] = sduiData.shoppingCard[product.id] as? Bool != true
                } label: {
                    if sduiData.shoppingCard[product.id] as? Bool == true { Text("Verwijder") } else { Text("Koop!") }
                }
            }

        }
    }
}
