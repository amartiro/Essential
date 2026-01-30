//
//  UIButton+TestHelpers.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 30.01.26.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
