//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 12.12.25.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
