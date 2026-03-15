//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 13.02.26.
//

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
