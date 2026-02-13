//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 13.02.26.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
