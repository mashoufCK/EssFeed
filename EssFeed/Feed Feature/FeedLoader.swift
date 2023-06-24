//
//  FeedLoader.swift
//  EssFeed
//
//  Created by Mashuf Chowdhury on 6/17/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
     func load(completion: @escaping (LoadFeedResult) -> Void)
    
}

