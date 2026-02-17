//
//  FeedLoaderPresentationAdapter.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 04.02.26.
//

import EssentialFeed

final class FeedLoaderPresentationAdapter: FeedViewControllerDelegate {
    private let feedLoader: FeedLoader
    var presenter: FeedPresenter?
    
    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    func didRequestFeedRefresh() {
        presenter?.didStartLoadingFeed()
        
        feedLoader.load { [weak self] result in
            guard let self else { return }
            switch result {
            case let .success(feed):
                presenter?.didFinishLoadingFeed(with: feed)
                
            case let .failure(error):
                presenter?.didFinishLoadingFeed(with: error)
            }
        }
    }
}
