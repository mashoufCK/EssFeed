//
//  RemoteFeedLoaderTests.swift
//  EssFeedTests
//
//  Created by Mashuf Chowdhury on 6/18/23.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTest {
    
    func test_init() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        //sut.load()
        
        XCTAssertNil(client.requestedURL )
    }
    
}
