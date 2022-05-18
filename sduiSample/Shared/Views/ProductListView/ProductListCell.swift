//
//  ProductListCell.swift
//  sdui (iOS)
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ProductListCell: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "")) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            Text("Product List View")
        }
    }
}

struct ProductListCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductListCell()
    }
}
