//
//  api.swift
//  sdui
//
//  Created by Dylan on 06/04/2022.
//

import Foundation
import UIKit
import SDUI

final class Api {
    static let shared = Api()
    
    private let baseUrl = "http://localhost:6060"
    
    public func getViewWith(uri: String?, data: String?, completion: @escaping ((SDUIScreen) -> ())) {
        let url: URL = URL(string: "\(baseUrl)/\(uri ?? "home")")! //home
        
//        guard let url = url else { url = URL(string: "\(baseUrl)/home") }
        
        get(url: url, type: SDUIScreen.self) { result in
            switch result {
            case .success(let screen):
                DispatchQueue.main.async {
                    if let dataValue = data, let data = screen.data {
//                        TODO: Data
//                        let jsonData = data.get(value: dataValue)
//                        self.decode(data: jsonData!, type: [ApiPost].self)
                    }
                    completion(screen)
                }
            case .failure(let error):
                print("error: \(error)")
            }
        }
    }
    
    public func getPosts(_ completion: @escaping (([ApiPost]) -> ()) ) {
        if let url = URL(string: "\(baseUrl)/posts") {
            
            get(url: url, type: [ApiPost].self) { result in
                print(result)
                switch result {
                case .success(let posts):
                    completion(posts)
                case .failure(let error):
                    print("error: \(error)")
                }
            }
        }
    }
    
    public func getHome(_ completion: @escaping ((SDUIScreen) -> ()) ) {
        if let url = URL(string: "\(baseUrl)/home") {
            
            get(url: url, type: SDUIScreen.self) { result in
                print(result)
                switch result {
                case .success(let screen):
                    completion(screen)
                case .failure(let error):
                    print("error: \(error)")
                }
            }
        }
    }
    
    public func getTest(_ completion: @escaping ((SDUIScreen) -> ()) ) {
        if let url = URL(string: "\(baseUrl)/test") {
            
            get(url: url, type: SDUIScreen.self) { result in
                print(result)
                switch result {
                case .success(let screen):
                    completion(screen)
                case .failure(let error):
                    print("error: \(error)")
                }
            }
        }
    }
    
    private func get<T: Codable>(url: URL, type: T.Type, completion: @escaping (Result<T, SDUINetworkError>) -> Void) {
       let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
           
           if let _ = error {
               completion(.failure(.unableToComplete))
               return
           }
                       
           guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
               completion(.failure(.invalidResponse))
               return
           }
           
           guard let data = data else {
               completion(.failure(.invalidData))
               return
           }
           
           if let decodedResponse = self.decode(data: data, type: type) {
               completion(.success(decodedResponse))
           } else { completion(.failure(.invalidData)) }
           
       }
       
       task.resume()
   }
    
    private func decode<T: Codable>(data: Data, type: T.Type) -> T? {
        do {
            let decoder = JSONDecoder()
            let decodedResponse = try decoder.decode(T.self, from: data)
            return decodedResponse
        } catch {
            print(error)
            print(String(decoding: data, as: UTF8.self))
            return nil
        }
    }
    
}

enum SDUINetworkError: Error {
    case invalidURL
    case unableToComplete
    case invalidResponse
    case invalidData
}
