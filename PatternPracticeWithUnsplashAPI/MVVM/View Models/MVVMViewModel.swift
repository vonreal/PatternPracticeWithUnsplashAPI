//
//  MVVMViewModel.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/11/01.
//

import UIKit

/* 3단계 - MVVM
    Model - View Model - View(ViewController)
    View Model에서 Binding이 필요한데, Binding은 1. KVO, 2. FRP, 3. Delegation, 4) Boxing이 있고 Boxing 방법 사용.
 
    📱 뷰(=뷰컨): 뷰만 보여줌!
    🏃‍♀️ 뷰모델: 비즈니스 로직, 바인딩(유틸리티, Box)
    💭 모델: 데이터 구조를 담고 있는 파일들 (RandomImage)
 */

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
