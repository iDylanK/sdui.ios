//
//  ProductHeader.swift
//  sdui
//
//  Created by Dylan on 01/06/2022.
//

import Foundation
import SwiftUI

struct ProductHeader: View {
    var product: SDUIProductHeader
    
    var body: some View {
        AsyncImage(url: URL(string: product.product.image)) { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }.frame(height: 150)
        
        Text(product.product.content).bold()
        
        Button("In winkelmandje") {
//            TODO: ...
            print("TODO")
        }
    }
    
}
