//
//  HotGirlUser.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import Foundation

struct HotGirlUser: Codable {
    var _id: String
    var username: String
    var email: String
    var userAvatar: URL?
    var title: String?
}
