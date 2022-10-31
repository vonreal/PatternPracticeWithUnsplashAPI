//
//  UIButton+Extension.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/31.
//

import UIKit

extension UIButton {
    func designDefaultButton(title: String) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = .black
        self.tintColor = .white
    }
}
