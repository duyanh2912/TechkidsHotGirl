//
//  HomeViewController.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController, StoryboardInstantiable {
    static var storyboardName: String = "Main"
    var collectionViewDataSource: HomeCollectionViewDataSource?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Techkids Logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalToConstant: 16).isActive = true
        navigationItem.titleView = imageView
        
        collectionView.register(HotGirlImageCollectionViewCell.self, forCellWithReuseIdentifier: HotGirlImageCollectionViewCell.identifier)
        if let dataSource = collectionViewDataSource {
            collectionView.dataSource = dataSource
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
