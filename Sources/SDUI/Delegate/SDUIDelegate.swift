//
//  File.swift
//  
//
//  Created by Dylan on 08/05/2022.
//

import Foundation

public protocol SDUIDelegate {
    
    func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ()))
}

