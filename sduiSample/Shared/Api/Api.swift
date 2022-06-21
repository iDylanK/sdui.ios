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

    public func getView(with url: String?, data: String?, completion: @escaping ((SDUIScreen) -> Void)) {
        guard let url = URL(string: "\(baseUrl)/\(url ?? "library")") else { return }

        get(url: url, type: SDUIScreen.self) { result in
            switch result {
            case .success(let screen):
                DispatchQueue.main.async {
                    completion(screen)
                }
            case .failure(let error):
                print("error: \(error)")
            }
        }
    }

    private func get<T: Codable>(url: URL, type: T.Type, completion: @escaping (Result<T, SDUINetworkError>) -> Void) {
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if error != nil {
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

            if let decodedResponse = Api.decode(data: data, type: type) {
                completion(.success(decodedResponse))
            } else { completion(.failure(.invalidData)) }

        }

        task.resume()
    }

    private static func decode<T: Codable>(data: Data, type: T.Type) -> T? {
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
