//
//  BaseView.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/31.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setConfigure()
        setLayout()
    }
    
    func setConfigure() { }
    func setLayout() { }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
