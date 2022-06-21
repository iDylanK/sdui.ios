//
//  SDUIFilterDelegate.swift
//  
//
//  Created by Dylan on 20/06/2022.
//

import SwiftUI

public protocol SDUIFilterDelegate: AnyObject {
    func componentFilter(_ components: [SDUIComponent]) -> [SDUIComponent]
}
