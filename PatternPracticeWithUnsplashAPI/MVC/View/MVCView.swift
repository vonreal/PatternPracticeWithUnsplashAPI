//
//  MVCView.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/31.
//

import UIKit

final class MVCView: BaseView {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.designDefaultImageView()
        return imageView
    }()
    
    let updateButton: UIButton = {
        let button = UIButton()
        button.designDefaultButton(title: AppStrings.update)
        return button
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 20
        return stackView
    }()
    
    override func setConfigure() {
        super.setConfigure()
        
        self.backgroundColor = .white
        
        // StackView
        [imageView, updateButton].forEach {
            stackView.addArrangedSubview($0)
        }
        
        // MVCView
        [stackView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setLayout() {
        super.setLayout()
        
        [imageView, updateButton, stackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.75)
        ])
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 1)
        ])
        
        NSLayoutConstraint.activate([
            updateButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
