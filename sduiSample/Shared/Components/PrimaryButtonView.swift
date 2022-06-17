//
//  PrimaryButtonView.swift
//  sdui (iOS)
//
//  Created by Dylan on 16/06/2022.
//

import SwiftUI

struct PrimaryButtonView: View {
    @EnvironmentObject var sduiData: SDUIData
    @State var buttonTitle: String?

    let button: SDUIPrimaryButton
    let product: SDUIProduct?

    var body: some View {
        Button {
            if let product = product, case .productBuy(let action) = button.action {
                sduiData.shoppingCard[product.id] = sduiData.shoppingCard[product.id] != true
                buttonTitle = sduiData.shoppingCard[product.id] != true ? action.title : action.titleRemove
            }
        } label: {
            Text(buttonTitle == nil ? button.title : (buttonTitle ?? button.title))
                .frame(width: 200, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.white, lineWidth: 2)
                )
        }
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(25)
            .contentShape(Rectangle())
            .onAppear {
                if
                    let product = product,
                    case .productBuy(let action) = button.action,
                    let card = sduiData.shoppingCard[product.id]
                {
                    // TODO: Would not be necasary if api would have a database..
                    if card { buttonTitle = action.titleRemove
                    } else { buttonTitle = action.title }
                }
            }
    }
}
