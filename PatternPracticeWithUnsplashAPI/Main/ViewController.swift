//
//  ViewController.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/27.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func mvButtonClicked(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "VCMain", bundle: nil)
        guard let viewCon = storyBoard.instantiateViewController(withIdentifier: "VCMainViewController") as? VCMainViewController else { return }
        self.navigationController?.pushViewController(viewCon, animated: true)
    }
    
    @IBAction func mvcButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func mvvmButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func mvvmRxswiftButtonClicked(_ sender: UIButton) {
    }
}

