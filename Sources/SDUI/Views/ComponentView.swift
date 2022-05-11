//
//  ComponentView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ComponentView: View {
    var component: SDUIComponent
    
    var body: some View {
        switch component.type {

        case .vstack: VStackView(vstack: chcode(component, to: SDUIVStack.self)!)
        case .hstack: HStackView(hstack: chcode(component, to: SDUIHStack.self)!)
        case .button: ButtonView(button: chcode(component, to: SDUIButton.self)!)
        case .text: TextView(text: chcode(component, to: SDUIText.self)!)
        case .image: ImageView(image: chcode(component, to: SDUIImage.self)!)
        case .list: ListView(list: chcode(component, to: SDUIList.self)!)
        case .custom: SDUI.shared.delegate?.customComponent(component)
        case .progressView: ProgressView()
        }
    }
    
    func chcode<T: Decodable>(_ component: SDUIComponent, to: T.Type) -> T? {
        do {
            let data = try PropertyListEncoder.init().encode(component)
            let model = try PropertyListDecoder.init().decode(T.self, from: data)
            return model
        } catch {
            print("\(error)")
            return nil
        }
    }
}
