//
//  SDUIView.swift
//  SDUI (iOS)
//
//  Created by Dylan on 10/04/2022.
//

import SwiftUI

public struct SDUIRootView: View {
    @StateObject var state = SDUIState()

    var viewUrl: String?
    var placeHolder: SDUIPlaceHolder?
    var navigationView = false

    public init() {}

    public init(viewUrl: String? = nil, placeHolder: SDUIPlaceHolder? = nil, navigationView: Bool = false) {
        self.viewUrl = viewUrl
        self.placeHolder = placeHolder
        self.navigationView = navigationView
    }

    public var body: some View {
        if navigationView {
            NavigationView {
                RootView(viewUrl: self.viewUrl)
            }
        } else {
            RootView(viewUrl: self.viewUrl)
        }
    }

}
