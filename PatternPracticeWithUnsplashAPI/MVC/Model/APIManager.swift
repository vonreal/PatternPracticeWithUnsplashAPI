//
//  MVCModel.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/31.
//

import UIKit

enum APIError: Error {
    case invalidResponse
    case noData
    case failedRequest
    case invalidData
}

struct APIManager {
    private init() { }
    
    static func getUnsplashURL() -> URL? {
        let scheme = "https"
        let host = "api.unsplash.com"
        let path = "/photos/random/"
        
        var component = URLComponents()
        component.scheme = scheme
        component.host = host
        component.path = path
        component.queryItems = [
            URLQueryItem(name: "client_id", value: APIKey.unsplashAccessKey),
            URLQueryItem(name: "count", value: "1")
        ]
        
        
        guard let unsplashURL = component.url else { return nil }
        return unsplashURL
    }
    
    static func request(url: URL, completionHandler: @escaping ([RandomImage]?, APIError?) -> ()) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print("😩😩😩 Failed Request 😩😩😩")
                completionHandler(nil, .failedRequest)
                return
            }
            
            guard let data = data else {
                print("😩😩😩 No data returned 😩😩😩")
                completionHandler(nil, .noData)
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("😩😩😩 Unable Response 😩😩😩")
                completionHandler(nil, .invalidResponse)
                return
            }
            
            guard (200...299).contains(response.statusCode) else {
                print("😩😩😩 Failed Response 😩😩😩")
                completionHandler(nil, .failedRequest)
                return
            }
            
            do {
                let result = try JSONDecoder().decode([RandomImage].self, from: data)
                completionHandler(result, nil)
            } catch {
                print("😩😩😩 \(error) 😩😩😩")
                completionHandler(nil, .invalidData)
            }
        }
        task.resume()
    }
    
    
}
