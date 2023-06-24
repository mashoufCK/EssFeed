//
//  RemoteFeedLoader.swift
//  EssFeed
//
//  Created by Mashuf Chowdhury on 6/18/23.
//

import Foundation


public final class RemoteFeedLoader:FeedLoader {
    let url: URL
    let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    public typealias Result = LoadFeedResult
    
    public init (url: URL , client: HTTPClient){
        self.client = client
        self.url = url
    }
    
    public func load(completion: @escaping  (Result) -> Void) {
        
        client.get(from: url) { [weak self]
            result  in
            guard self != nil else { return }
            
            switch result {
            case let .success(data, response):
                completion(FeedItemsMapper.map(data, from: response))
            case .failure:
                completion(.failure(Error.connectivity))
            }
        }
    }
}
