//
//  SDUIView.swift
//  SDUI (iOS)
//
//  Created by Dylan on 10/04/2022.
//

import SwiftUI

public struct SDUIRootView: View {
    @State var components: [SDUIComponent]?
    @State var isLoading: Bool = true
    @StateObject var state = SDUIState()
    
    var viewUrl: String?
    
    public init() {}
    
    public init(viewUrl: String?) {
        self.viewUrl = viewUrl
    }
        
    public var body: some View {
        if self.isLoading {
            ProgressView().onAppear {
                SDUI.shared.delegate?.getViewWith(uri: viewUrl, data: nil, completion: { screen in
                    self.components = screen.view?.components
                    self.isLoading = false
                })
            }
        } else {
            ScreenView(components: self.components)
                .alert(self.state.alert?.title ?? "", isPresented: self.state.alertBinding(), actions: {}, message: {
                    Text(self.state.alert?.message ?? "")
                })
                
                .sheet(isPresented: self.state.sheetBinding()) {
                    SDUIRootView(viewUrl: self.state.sheet?.url)
                }
                .environmentObject(state)
        }
    }

}

//struct SDUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SDUIView()
//    }
//}

extension Color {
    static func SDUI(color: SDUIColor?) -> Color {
        switch color {
        case .blue: return Color.blue
        case .red: return Color.red
        case .none: return Color.black
        // etc...
        }
    }
}
