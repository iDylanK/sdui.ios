//
//  SDUIDataSource.swift
//  
//
//  Created by Dylan on 21/06/2022.
//

public protocol SDUIDataSource: AnyObject {
    func getView(with url: String?, data: String?, completion: @escaping ((SDUIScreen) -> Void))
}
