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
        AsyncImage(url: URL(string: product.product.image)) { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }.frame(height: 150)

        Text(product.product.content).bold()

        Button {
            print(sduiData.shoppingCard)
            sduiData.shoppingCard[product.product.id] = sduiData.shoppingCard[product.product.id] as? Bool != true
        } label: {
            if sduiData.shoppingCard[product.product.id] as? Bool == true { Text("Verwijder") } else { Text("In winkelmandje!") }
        }

    }

}
