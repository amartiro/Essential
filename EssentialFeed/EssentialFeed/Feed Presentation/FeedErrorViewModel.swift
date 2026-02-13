//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 13.02.26.
//

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
