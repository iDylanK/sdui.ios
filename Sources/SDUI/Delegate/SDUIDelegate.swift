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
    func headerView(_ header: SDUIHeader) -> AnyView

    func decodeComponent(_ decoder: Decoder) throws -> Any
    func decodeHeader(_ decoder: Decoder) throws -> Any
    func decodeAction(_ decoder: Decoder) throws -> Any

    func componentEquals(_ lhs: SDUIComponent, _ rhs: SDUIComponent) -> Bool
    func headerEquals(_ lhs: SDUIHeader, _ rhs: SDUIHeader) -> Bool
    func actionEquals(_ lhs: SDUICustomAction, _ rhs: SDUICustomAction) -> Bool

//    func componentSearch(_ components: [SDUIComponent], search: String) -> [SDUIComponent]
}
