//
//  ProductListCell.swift
//  sdui (iOS)
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ProductListCell: View {
    var product: SDUIProduct
    var action: SDUIProductLike?
    
    @State var bought = false
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.frame(width: 50, height: 50, alignment: .top)
            Text(product.content).foregroundColor(.black)
            
            if let action = action {
                Spacer()
                Button {
                    bought = !bought
                } label: {
                    if bought == true { Text("Remove") }
                    else { Text("Buy") }
                }
                .onAppear {
                    print(action)
                }
            }

        }
    }
}
