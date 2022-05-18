//
//  ProductListView.swift
//  sdui (iOS)
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI
import SDUI

struct ProductListView: View {
    @StateObject var state: SDUIState = SDUIState()
    var products: [SDUIProduct]
    
    @State var nav: Bool = true
    
    var body: some View {
        List(products, id: \.content) { product in
//            Button(action: {
//                if product.action?.type == .sheet {
//                    print("aasd")
//                    state.sheet = product.action
//                }
//
//            }) {
            
            NavigationLink(destination: SDUIRootView()) {
                HStack {
                    AsyncImage(url: URL(string: product.image)) { image in
                        image.resizable().aspectRatio(contentMode: .fill)
                    } placeholder: {
                        ProgressView()
                    }.onAppear {
                        print(product)
                    }.frame(width: 50, height: 50, alignment: .center)
                    Text(product.content)
                    
                        
                }
            }
        }
//        }.sheet(isPresented: state.sheetBinding()) {
//            Text("okay").onAppear(perform: {
//                print("asdasdasds")
//            })
//        }
    }
}

//struct ProductListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductListView()
//    }
//}
