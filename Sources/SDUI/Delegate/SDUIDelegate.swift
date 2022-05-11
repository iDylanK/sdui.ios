//
//  File.swift
//  
//
//  Created by Dylan on 08/05/2022.
//

import Foundation
import SwiftUI

public protocol SDUIDelegate {
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ()))
    func customComponent(_ component: SDUIComponent) -> AnyView
}
