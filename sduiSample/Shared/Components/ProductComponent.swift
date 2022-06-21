//
//  ProductListCell.swift
//  sdui (iOS)
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI
import SDUI

struct ProductComponent: View {
    var component: SDUIProductComponent

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: component.product.image)) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.frame(width: 50, height: 50, alignment: .top)
            Text(component.product.content).foregroundColor(.black)
        }
    }
}
