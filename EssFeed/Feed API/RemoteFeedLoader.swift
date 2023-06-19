//
//  RemoteFeedLoader.swift
//  EssFeed
//
//  Created by Mashuf Chowdhury on 6/18/23.
//

import Foundation

public protocol HTTPClient {
     func get(from url: URL)
}


public final class RemoteFeedLoader {
    let url: URL
    let client: HTTPClient
    
   public init (url: URL , client: HTTPClient){
        self.client = client
        self.url = url
    }
    
   public func load(){
        
        client.get(from: url)
    }
}

