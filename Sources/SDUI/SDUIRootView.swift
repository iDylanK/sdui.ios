//
//  SDUIView.swift
//  SDUI (iOS)
//
//  Created by Dylan on 10/04/2022.
//

import SwiftUI

/// Main start view when using the SDUI LIbrary.
/// This view will decide whether to implement a NavigationView.
/// It also handles retrieving data from the API (by creating a SDUIState and passing the viewUrl)
/// or choosing to display a set PlaceHolder.
public struct SDUIRootView: View {
    /// State variable holding state information for this specific SDUI View (not global for all views).
    @StateObject var state = SDUIState()

    /// Url where to fetch Screen information from.
    var viewUrl: String?
    /// PlaceHolder to be set as a Header when the content is being fetched.
    var placeHolder: SDUIPlaceHolder?
    /// Boolean that decides whether the SDUI View is embedded in a NavigationView.
    var navigationView = false

    public init(viewUrl: String? = nil, placeHolder: SDUIPlaceHolder? = nil, navigationView: Bool = false) {
        self.viewUrl = viewUrl
        self.placeHolder = placeHolder
        self.navigationView = navigationView
    }

    public var body: some View {
        if navigationView {
            NavigationView {
                RootView(viewUrl: self.viewUrl, placeHolder: placeHolder)
            }
        } else {
            RootView(viewUrl: self.viewUrl, placeHolder: placeHolder)
        }
    }

}
