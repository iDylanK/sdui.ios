//
//  File.swift
//  
//
//  Created by Dylan on 08/05/2022.
//

import Foundation
import SwiftUI

public protocol SDUIComponentDelegate: AnyObject {
    func view(for component: SDUI.SDUICustomComponent, with action: SDUICustomAction?) -> AnyView
    func decode(from decoder: Decoder) throws -> AnyHashable
    func equals(_ lhs: SDUICustomComponent, _ rhs: SDUICustomComponent) -> Bool
    func filter(component: SDUICustomComponent) -> Bool
}

public protocol SDUIHeaderDelegate: AnyObject {
    func view(for header: SDUICustomHeader) -> AnyView
    func decode(from decoder: Decoder) throws -> AnyHashable
    func equals(_ lhs: SDUICustomHeader, _ rhs: SDUICustomHeader) -> Bool
}

public protocol SDUIActionDelegate: AnyObject {
    func decode(from decoder: Decoder) throws -> AnyHashable
    func equals(_ lhs: SDUICustomAction, _ rhs: SDUICustomAction) -> Bool
}

public protocol SDUIPlaceHolderDelegate: AnyObject {
    func view(for placeHolder: SDUIPlaceHolder) -> AnyView
    func decode(from decoder: Decoder) throws -> AnyHashable
    func equals(_ lhs: SDUIPlaceHolder, _ rhs: SDUIPlaceHolder) -> Bool
}
