//
//  CustomComponentView.swift
//  sdui
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI
import SDUI

struct ComponentView: View {
    var component: SDUIComponent

    var body: some View {
        switch component.type {
        case .product: ProductListCell(product: component.product!)
        }
//        case .sample: Text("Sample")
////        case .postList: PostListView()
////        case .productList: ProductListView(products: component.products ?? [])
//        case .none: EmptyView()
//        }
    }

}
