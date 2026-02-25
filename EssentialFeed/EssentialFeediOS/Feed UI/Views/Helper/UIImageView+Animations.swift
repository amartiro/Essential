//
//  UIImageView+Animations.swift‎ .swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 03.02.26.
//

import UIKit

extension UIImageView {
    func setImageAnimated(_ newImage: UIImage?) {
        image = newImage
        
        guard newImage != nil else { return }
        
        alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
