//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 12.12.25.
//

import Foundation

public enum LoadFeedResult {
	case success([FeedImage])
	case failure(Error)
}

public protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
