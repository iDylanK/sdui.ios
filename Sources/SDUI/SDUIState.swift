//
//  SDUIState.swift
//  
//
//  Created by Dylan on 11/05/2022.
//

import Foundation
import SwiftUI

public class SDUIState: ObservableObject {
    @Published var alert: SDUIAction?
    @Published var sheet: SDUIAction?
    
    @Published var isLoading: Bool = true
    @Published var screen: SDUIScreen?
    
    @Published var search = ""
    
    var viewUrl: String?
    
    public init() {}
    
    public func getView(viewUrl: String? = nil) {
        if let url = viewUrl { self.viewUrl = url }
        
        ServerDrivenUI.shared.delegate?.getViewWith(uri: self.viewUrl, data: nil, completion: { screen in
            DispatchQueue.main.async {
                self.screen = screen
                self.isLoading = false
            }
        })
    }
    
    public func alertBinding() -> Binding<Bool> {
       return Binding(get: {
           return self.alert != nil
       }, set: { _ in
           self.alert = nil
       })
    }
    
    public func sheetBinding() -> Binding<Bool> {
       return Binding(get: {
           return self.sheet != nil
       }, set: { _ in
           self.sheet = nil
       })
    }
}
