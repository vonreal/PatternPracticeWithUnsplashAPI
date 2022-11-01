//
//  MVVMViewModel.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/11/01.
//

import UIKit

public class MVVMViewModel {
    
    let randomImage: Box<UIImage?> = Box(nil)
    
    func updateImage() {
        let url = UnsplashService.getUnsplashURL()!
        UnsplashService.request(url: url) { result, error in
            let imageURLString = result?[0].urls.small
            if let imageURL = URL(string: imageURLString!) {
                self.getImageFromURL(url: imageURL) { image in
                    self.randomImage.value = image
                }
            }
        }
    }
    
    typealias completion = (UIImage) -> ()
    private func getImageFromURL(url: URL, completionHandler: @escaping completion) {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        completionHandler(image)
                    }
                }
            }
        }
    }

    init() {
        self.randomImage.value = nil
        updateImage()
    }
}
