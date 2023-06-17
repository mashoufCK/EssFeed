//
//  FeedLoader.swift
//  EssFeed
//
//  Created by Mashuf Chowdhury on 6/17/23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
    
}

