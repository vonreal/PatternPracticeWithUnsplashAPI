//
//  MVMainViewController.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/28.
//

/* 1단계 - 뷰(스토리보드), 뷰컨으로만 구현해보기 (서드파티 없이 도전!)
    - URLSession으로 Unsplash API 사용하기
    - API로 받아온 데이터 구조 만들어서 저장하기
    - 이미지 보여주기 (📚 기존 - KingFisher 사용, 없이 처리하는 법 공부)
    - 버튼 눌렀을 때 액션 처리하기 (랜덤 이미지 다시 가져와서 보여주기)
 
    📱 뷰: 레이아웃, UI 객체 배치
    🏃‍♀️ 뷰컨: 모델 및 비즈니스 로직 처리
 */

import UIKit

class VCMainViewController: BaseViewController {

    // 1. Outlet 연결
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 3. UI 객체 config, default 데이터 처리하기
        setUIConfigAndDesign()
        
        // 4. 비즈니스 로직
        //  4-1. Unsplash API 요청하기
        requestRandomImageInUnsplash()
        //  4-2. API로 받아온 데이터 담을 구조 만들기
        //  4-3. 구조에 담기
        //  4-4. 데이터 뷰에 업데이트해주기
        //  4-5. 액션 처리하기
    }
    
    func setUIConfigAndDesign() {
        setPhotoImageView()
        setUpdateButton()
    }
    
    func setPhotoImageView() {
        photoImageView.image = UIImage(systemName: "photo")
        photoImageView.contentMode = .scaleAspectFit
        photoImageView.tintColor = .lightGray
    }
    
    func setUpdateButton() {
        updateButton.setTitle("업데이트", for: .normal)
        updateButton.backgroundColor = .black
        updateButton.tintColor = .white
    }
    
    //  4-1. Unsplash API 요청하기
    func requestRandomImageInUnsplash() {
        
    }
    
    // 2. Button Action 연결
    @IBAction func updateButtonClicked(_ sender: UIButton) {
    }
}
