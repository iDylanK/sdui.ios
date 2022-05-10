//
//  SDUIView.swift
//  SDUI (iOS)
//
//  Created by Dylan on 10/04/2022.
//

import SwiftUI

public struct SDUIRootView: View {
    @State var components: [SDUIComponent]?
    @State var alert: SDUIAction?
    @State var sheet: SDUIAction?
    @State var isLoading: Bool = true
    
    var delegate: SDUIDelegate?
    
    var viewUrl: String?
    
    public init() {}
    
    public init(delegate: SDUIDelegate? = nil) {
        self.delegate = delegate
    }

    public init(delegate: SDUIDelegate? = nil, viewUrl: String?) {
        self.delegate = delegate
        self.viewUrl = viewUrl
    }
    
    //    public init(components: [SDUIComponent]?) {
    //        self._components = State(initialValue: components)
    //        self._isLoading = State(initialValue: false)
    //    }
        
    public var body: some View {
        if self.isLoading {
            ProgressView().onAppear {
                delegate?.getViewWith(uri: viewUrl, data: nil, completion: { screen in
                    self.components = screen.view?.components
                    self.isLoading = false
                })
            }
        } else { main }
    }
    
    private var main: some View {
        VStack {
            if let components = self.components {
                ForEach(components, id: \.self) { component in
                    SDUIComponent(component)
                }
            }
        }
        
        .alert(self.alert?.title ?? "", isPresented: self.alertBinding(), actions: {}, message: {
            Text(self.alert?.message ?? "")
        })
        
        .sheet(isPresented: sheetBinding()) {
            SDUIRootView(delegate: self.delegate, viewUrl: self.sheet?.url)
            
//            if self.sheet?.url == "header" { HeaderView() } //TODO: using type if stays
//            else if self.sheet?.url == "posts" { PostListView() } //TODO: using type if stays
//            else { SDUIView(viewURI: self.sheet?.url) }
        }
    }
    
    func viewWith(components: [SDUIComponent]) -> some View {
        return ForEach(components, id: \.self) { component in
            SDUIComponent(component)
        }
    }
    
    
    func SDUIComponent(_ component: SDUIComponent) -> some View {
        switch component.type {
        case .text: return AnyView(text(component))
        case .progressView: return AnyView(ProgressView())
        case .hstack: return AnyView(hstack(component))
        case .vstack: return AnyView(vstack(component))
        case .list: return AnyView(list(component))
        case .button: return AnyView(button(component))
        case .image: return AnyView(image(component))
        }
        
    }
    
    func image(_ component: SDUIComponent) -> some View {
        return AsyncImage(url: URL(string: component.url ?? "" )) { image in
            image.resizable().aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
    }
    
    func button(_ component: SDUIComponent) -> some View {
        var button = Button(component.title ?? "", action: {})
        
        guard let action = component.action else { return button }
        
        switch action.type {
        case .alert: button = Button(component.title ?? "", action: { self.alert = action })
        case .sheet: button = Button(component.title ?? "", action: { self.sheet = action })
            
        }

        return button
    }
    
    func text(_ component: SDUIComponent) -> Text {
        var text = Text(component.content ?? "")
        if let c = component.color { text = text.foregroundColor(Color.SDUI(color: c)) }
        return text
    }

    func hstack(_ component: SDUIComponent) -> some View {
        let hstack = HStack {
            viewWith(components: component.components ?? [])
        }
        return hstack
    }

    func vstack(_ component: SDUIComponent) -> some View {
        let vstack = VStack {
            viewWith(components: component.components ?? [])
        }
        return vstack
    }

    func list(_ component: SDUIComponent) -> some View {
        let list = List(component.cells ?? [], id: \.id) { cell in
            Button(action: {
                guard let action = cell.action else { return }
                switch action.type {
                case .alert: self.alert = action
                case .sheet: self.sheet = action

                }

            }) {
                viewWith(components: cell.components ?? [])
            }
        }
        return list
    }
    
    private func alertBinding() -> Binding<Bool> {
       return Binding(get: {
           return self.alert != nil
       }, set: { _ in
           self.alert = nil
       })
    }
    
    private func sheetBinding() -> Binding<Bool> {
       return Binding(get: {
           return self.sheet != nil
       }, set: { _ in
           self.sheet = nil
       })
    }

}

//struct SDUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SDUIView()
//    }
//}

extension Color {
    static func SDUI(color: SDUIColor) -> Color {
        switch color {
        case .blue:
            return Color.blue
        case .red:
            return Color.red
        }
        // etc...
    }
}
