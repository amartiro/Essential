//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 03.02.26.
//

import Foundation
import XCTest
import EssentialFeed
import EssentialFeediOS

extension FeedUIIntegrationTests {
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }
    
    var feedTitle: String {
        FeedPresenter.title
    }
}
