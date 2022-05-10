//
//  HeaderView.swift
//  sdui (iOS)
//
//  Created by Dylan on 20/04/2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("title").foregroundColor(.black).font(.largeTitle)
            Text("post.message").foregroundColor(.gray).multilineTextAlignment(.center)
        }
        
        AsyncImage(url: URL(string: "https://media.nu.nl/m/5znx253arrq8_xwd1280.jpg/red-bull-houdt-nog-veel-achter-bij-presentatie-nieuwe-auto-verstappen.jpg")) { image in
            image.resizable().aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
