//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 12.12.25.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
	func load(completion: @escaping (Result) -> Void)
}
