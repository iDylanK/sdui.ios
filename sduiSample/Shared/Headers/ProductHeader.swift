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
    @State var buttonTitle: String = ""

    var header: SDUIProductHeader?
    var placeHolder: SDUIProductPlaceHolder?

    var body: some View {
        HStack {
            Spacer()
            AsyncImage(url: URL(string: header?.product.image ?? placeHolder?.image ?? "")) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.frame(height: 150)
            Spacer()
        }

        HStack {
            Spacer()
            Text(header?.product.content ?? placeHolder?.title ?? "").bold()
            Spacer()
        }

        if let header = header {
            HStack {
                Spacer()
                PrimaryButton(buttonTitle: $buttonTitle) {
                    if case .productBuy(let action) = header.primaryButton.action {
                        sduiData.shoppingCard[header.product.id] = sduiData.shoppingCard[header.product.id] != true
                        buttonTitle = sduiData.shoppingCard[header.product.id] != true ? action.title : action.titleRemove
                    }
                }.onAppear {
                    if case .productBuy(let action) = header.primaryButton.action {
                        // TODO: Would not be necasary if api would have a database..
                        let card = sduiData.shoppingCard[header.product.id]
                        if card ?? false { buttonTitle = action.titleRemove
                        } else { buttonTitle = action.title }
                    }
                }
                Spacer()
            }
        } else {
            HStack {
                Spacer()
                ProgressView()
                Spacer()
            }
        }

    }

}
