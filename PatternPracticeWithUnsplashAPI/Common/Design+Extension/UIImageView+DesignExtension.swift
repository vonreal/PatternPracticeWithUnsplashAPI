//
//  UIImageView+Extension.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/31.
//

import UIKit

extension UIImageView {
    func designDefaultImageView() {
        self.contentMode = .scaleAspectFill
        self.backgroundColor = .lightGray
        self.clipsToBounds = true
    }
}
