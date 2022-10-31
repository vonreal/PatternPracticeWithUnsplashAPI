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

    }
}
