//
//  RandomImage.swift
//  PatternPracticeWithUnsplashAPI
//
//  Created by 나지운 on 2022/10/28.
//

import Foundation

struct RandomImage: Codable {
    let urls: Urls
}

struct Urls: Codable {
    let raw, full, regular, small, thumb: String

    enum CodingKeys: String, CodingKey {
        case raw, full, regular, small, thumb
    }
}
