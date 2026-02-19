//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 19.02.26.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
