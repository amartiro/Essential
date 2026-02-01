//
//  FeedRefreshViewController.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 30.01.26.
//

import UIKit
import EssentialFeed

final public class FeedRefreshViewController: NSObject {
    public var refreshView = UIRefreshControl() {
        didSet {
            view = binded(refreshView)
        }
    }
    public lazy var view = binded(UIRefreshControl())
    
    private let viewModel: FeedViewModel
    
    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
    
    @objc func refresh() {
        viewModel.loadFeed()
    }
    
    private func binded(_ view: UIRefreshControl) -> UIRefreshControl {
        viewModel.onLoadingStateChange = { [weak view] isLoading in
            if isLoading {
                view?.beginRefreshing()
            } else {
                view?.endRefreshing()
            }
        }
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
