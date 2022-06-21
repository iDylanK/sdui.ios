//
//  File.swift
//  
//
//  Created by Dylan on 08/05/2022.
//

import Foundation
import SwiftUI

public protocol SDUIDelegate: AnyObject {
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> Void))

    func componentView(_ component: SDUIComponent, action: SDUICustomAction?) -> AnyView
    func placeHolderView(_ placeHolder: SDUIPlaceHolder) -> AnyView
    func headerView(_ header: SDUICustomHeader) -> AnyView

    func decodeComponent(_ decoder: Decoder) throws -> Any
    func decodeHeader(_ decoder: Decoder) throws -> Any
    func decodePlaceHolder(_ decoder: Decoder) throws -> Any
    func decodeAction(_ decoder: Decoder) throws -> Any

    func componentEquals(_ lhs: SDUIComponent, _ rhs: SDUIComponent) -> Bool
    func headerEquals(_ lhs: SDUICustomHeader, _ rhs: SDUICustomHeader) -> Bool
    func placeHolderEquals(_ lhs: SDUIPlaceHolder, _ rhs: SDUIPlaceHolder) -> Bool
    func actionEquals(_ lhs: SDUICustomAction, _ rhs: SDUICustomAction) -> Bool
}
