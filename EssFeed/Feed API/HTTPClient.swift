//
//  HTTPClient.swift
//  EssFeed
//
//  Created by Mashuf Chowdhury on 6/23/23.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping  (HTTPClientResult) -> Void)
}
