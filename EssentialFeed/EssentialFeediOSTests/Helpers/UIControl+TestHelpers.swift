//
//  UIControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 30.01.26.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
