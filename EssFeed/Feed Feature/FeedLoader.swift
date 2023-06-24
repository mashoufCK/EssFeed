//
//  FeedLoader.swift
//  EssFeed
//
//  Created by Mashuf Chowdhury on 6/17/23.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
    
}

