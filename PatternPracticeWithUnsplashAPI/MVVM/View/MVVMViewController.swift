//
//  MVVMViewController.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/11/01.
//

import Foundation

class MVVMViewController: BaseViewController {

    private let mainView = MVCView()
    private var viewModel = MVVMViewModel()

    override func loadView() {
        super.loadView()
        
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.randomImage.bind { [weak self] image in
            self?.mainView.imageView.image = image
        }
    }
    
    // MARK: - Set Action and selectors
    override func setActions() {
        super.setActions()
        
        mainView.updateButton.addTarget(self, action: #selector(updateButtonClicked), for: .touchUpInside)
    }
    
    @objc
    private func updateButtonClicked() {
        viewModel.updateImage()
    }
}
