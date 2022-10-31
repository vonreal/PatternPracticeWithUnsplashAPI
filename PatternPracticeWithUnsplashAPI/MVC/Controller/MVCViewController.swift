//
//  MVCViewController.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/31.
//

import UIKit

class MVCViewController: BaseViewController {

    let mainView = MVCView()

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
        let url = APIManager.getUnsplashURL()!
        APIManager.request(url: url) { result, error in
            let imageURLString = result?[0].urls.small
            if let imageURL = URL(string: imageURLString!) {
                self.mainView.imageView.load(url: imageURL)
            }
        }
    }
}
