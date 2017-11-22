//
//  HotGirlImage.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import Foundation

struct HotGirlImage: Codable {
    let id: String
    var imageUrl: URL
    var view: Int
    var plus: [String]
    var description: String?
    var title: String
    var poster: HotGirlUser
    var updatedAt: String
    var createdAt: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case imageUrl
        case view
        case plus
        case description
        case title
        case poster
        case createdAt = "date"
        case updatedAt
    }
}
