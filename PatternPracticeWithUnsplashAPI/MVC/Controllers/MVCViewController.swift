//
//  MVCViewController.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/31.
//

import UIKit

/* 2단계 - MVC
    📱 코드베이스 뷰: 레이아웃, UI 객체 배치
    🏃‍♀️ 서비스: 비즈니스 주요 로직
    💭 뷰컨: 뷰 업데이트
 */

final class MVCViewController: BaseViewController {

    private let mainView = MVCView()

    override func loadView() {
        super.loadView()
        
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateImage()
    }
    
    // MARK: - Set Action and selectors
    override func setActions() {
        super.setActions()
        
        mainView.updateButton.addTarget(self, action: #selector(updateButtonClicked), for: .touchUpInside)
    }
    
    @objc
    private func updateButtonClicked() {
        updateImage()
    }
    
    // MARK: - functions
    private func updateImage() {
        let url = UnsplashService.getUnsplashURL()!
        UnsplashService.request(url: url) { result, error in
            let imageURLString = result?[0].urls.small
            if let imageURL = URL(string: imageURLString!) {
                self.mainView.imageView.load(url: imageURL)
            }
        }
    }
}
