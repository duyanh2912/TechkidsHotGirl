//
//  CollectionViewRegisterable.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 22/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import UIKit

protocol CollectionViewRegisterable {
    static var cellIdentifier: String { get }
    static func register(forCollectionView collectionView: UICollectionView)
}

extension CollectionViewRegisterable where Self: UICollectionViewCell {
    static var cellIdentifier: String { return "\(self)" }
    static func register(forCollectionView collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
    }
}
