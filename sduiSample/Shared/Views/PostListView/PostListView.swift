//
//  ContentView.swift
//  Shared
//
//  Created by Dylan on 06/04/2022.
//

import SwiftUI
import SDUI

struct PostListView: View {
    @StateObject var viewModel = PostListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
//                Image(systemName: "list.dash")
//                Text("a")
                List(self.viewModel.posts, id: \.id) { post in
                    Section {
                        PostView(post: post)
                    }
                }
                .onAppear() {
                    self.viewModel.getPosts()
                }
            }
        }
        .navigationTitle("SDUI")
        .refreshable {
            self.viewModel.getPosts()
        }
    }
}

private struct PostView: View {
    var post: ApiPost
    
    var body: some View {
        Button (action: {
            print("button click")
        }) {
            VStack {
                Text(post.title).foregroundColor(.black).font(.largeTitle)
                Text(post.message).foregroundColor(.gray).multilineTextAlignment(.center)
            }
            
            AsyncImage(url: URL(string: post.imageUrl)) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            Spacer()
            Spacer()
//            ProgressView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
