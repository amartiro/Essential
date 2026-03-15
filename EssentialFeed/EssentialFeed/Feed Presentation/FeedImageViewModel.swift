//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 14.02.26.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
