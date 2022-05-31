//
//  ProductListCell.swift
//  sdui (iOS)
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ProductListCell: View {
    var product: SDUIProduct
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.frame(width: 50, height: 50, alignment: .top)
            Text(product.content).foregroundColor(.black)
        }
    }
}

//struct ProductListCell_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductListCell()
//    }
//}
