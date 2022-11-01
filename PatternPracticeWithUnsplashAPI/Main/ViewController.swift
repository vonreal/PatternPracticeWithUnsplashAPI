//
//  ViewController.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/27.
//

import UIKit

final class ViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func mvButtonClicked(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "MVMain", bundle: nil)
        guard let viewCon = storyBoard.instantiateViewController(withIdentifier: "MVMainViewController") as? MVMainViewController else { return }
        self.navigationController?.pushViewController(viewCon, animated: true)
    }
    
    @IBAction func mvcButtonClicked(_ sender: UIButton) {
        let viewController = MVCViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func mvvmButtonClicked(_ sender: UIButton) {
        let viewController = MVVMViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func mvvmRxswiftButtonClicked(_ sender: UIButton) {
    }
}

