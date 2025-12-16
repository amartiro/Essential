//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 12.12.25.
//

import Foundation

enum LoadFeedResult {
	case success([FeedItem])
	case error(Error)
}

protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}

