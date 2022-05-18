//
//  CustomComponentView.swift
//  sdui
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI
import SDUI

struct CustomComponentView: View {
    var component: SDUIComponent
    
    var body: some View {
        switch component.customType {
        case .sample: Text("Sample")
        case .postList: PostListView()
        case .productList: ProductListView(products: component.products ?? [])
        case .none: EmptyView()
        }
    }
    
}
