//
//  UIView+TestHelpers.swift
//  EssentialApp
//
//  Created by Artak Martirosyan on 25.02.26.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
