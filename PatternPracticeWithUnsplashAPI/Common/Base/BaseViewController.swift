//
//  BaseViewController.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/28.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setActions()
    }
    
    func setActions() { }
    
    deinit {
        print("🙂🙂🙂🙂 deinit 🙂🙂🙂🙂")
    }
}
