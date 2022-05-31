//
//  PostListViewModel.swift
//  sdui
//
//  Created by Dylan on 07/04/2022.
//

import Foundation

class PostListViewModel: ObservableObject {
    @Published var posts = [ApiPost]()
    
    func getPosts() {
        Api.shared.getPosts { posts in
            DispatchQueue.main.async {
                self.posts = posts
            }
        }
    }

}
