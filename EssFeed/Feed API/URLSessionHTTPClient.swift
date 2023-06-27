//
//  URLSessionHTTPClient.swift
//  EssFeed
//
//  Created by Mashuf Chowdhury on 6/26/23.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    private struct UnexpectedValuesRepresentation: Error{}
    
    public func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void) {
        session.dataTask(with: url)  { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data,  let resonpse = response as? HTTPURLResponse {
                completion(.success(data, resonpse))
            } else {
                completion(.failure(UnexpectedValuesRepresentation()))
            }
        }.resume()
    }
}
