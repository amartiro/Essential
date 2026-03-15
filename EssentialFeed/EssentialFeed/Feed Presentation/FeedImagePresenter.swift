//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 14.02.26.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
