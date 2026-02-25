//
//  UIRefreshControl+Helpers.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 13.02.26.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
