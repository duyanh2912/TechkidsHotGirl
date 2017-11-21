//
//  HomeCollectionViewDataSource.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import Foundation
import UIKit

class HomeCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    var hotGirlImages: [HotGirlImage] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hotGirlImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HotGirlImageCollectionViewCell.identifier, for: indexPath)
        
        if let cell = cell as? HotGirlImageCollectionViewCell {
            cell.config(with: hotGirlImages[indexPath.row])
        }
        
        return cell
    }
}
