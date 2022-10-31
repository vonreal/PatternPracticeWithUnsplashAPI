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
        let storyBoard = UIStoryboard(name: "VCMain", bundle: nil)
        guard let viewCon = storyBoard.instantiateViewController(withIdentifier: "VCMainViewController") as? VCMainViewController else { return }
        self.navigationController?.pushViewController(viewCon, animated: true)
    }
    
    @IBAction func mvcButtonClicked(_ sender: UIButton) {
        let viewController = MVCViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func mvvmButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func mvvmRxswiftButtonClicked(_ sender: UIButton) {
    }
}

