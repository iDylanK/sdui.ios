//
//  SDUIDataSource.swift
//  
//
//  Created by Dylan on 21/06/2022.
//

/// SDUIDataSource that takes care of filling a SDUIRootView with its SDUIScreen Data.
/// This datasource requires a Network call that returns a SDUIScreen response (from the SDUI Backend Library).
/// The response has to be decoded to a SDUIScreen.
public protocol SDUIDataSource: AnyObject {
    /// Calls a given url and downloads the json and decodes it to SDUIScreen.
    /// - Parameters:
    ///   - url: The url where to get the SDUIScreen from.
    ///   - completion: Calls the completion handler on the library side that displays the Server Driven
    ///                 view returned.
    func getView(with url: String?, completion: @escaping ((SDUIScreen) -> Void))
}
