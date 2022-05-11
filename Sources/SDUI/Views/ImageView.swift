//
//  ImageView.swift
//
//
//  Created by Dylan on 11/05/2022.
//

import SwiftUI

struct ImageView: View {
    var image: SDUIImage
    
    var body: some View {
        AsyncImage(url: URL(string: image.url)) { image in
            image.resizable().aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
    }
}
