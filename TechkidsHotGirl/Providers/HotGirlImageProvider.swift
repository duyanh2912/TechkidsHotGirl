//
//  HotGirlImageProvider.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 22/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class HotGirlImageProvider {
    func getImages(_ callback: @escaping (_ success: Bool,_ images: [HotGirlImage]?, _ error: Error?) -> ()) {
        let api = apiEndPoint.appendingPathComponent("api/images")

        Alamofire.request(api).responseData { response in
            guard let data = response.result.value else {
                print(response.result.error!)
                callback(false,nil,response.error!)
                return
            }
            do {
                let json = try JSONDecoder().decode(HotGirlImageList.self, from: data)
                callback(true,json.images,nil)
            } catch {
                callback(false,nil,error)
            }
        }
    }
}
