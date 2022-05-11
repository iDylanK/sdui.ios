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
