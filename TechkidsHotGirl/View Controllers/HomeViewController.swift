//
//  HomeViewController.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import UIKit
import Hex

final class HomeViewController: UIViewController, StoryboardInstantiable, UICollectionViewDataSource {
    static var storyboardName: String = "Main"
    var hotGirlImages: [HotGirlImage] = []

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configTitleView()
        configCollectionView()
    }

    private func configCollectionView() {
        collectionView.backgroundColor = UIColor(hex: "#ededed")
        
        HotGirlImageCollectionViewCell.register(forCollectionView: collectionView)
        collectionView.dataSource = self

        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
    }

    private func configTitleView() {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Techkids Logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalToConstant: 16).isActive = true
        navigationItem.titleView = imageView
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }

    func updateDataSource(images: [HotGirlImage]) {
        hotGirlImages = images
        collectionView.reloadData()
    }

    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        return hotGirlImages.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HotGirlImageCollectionViewCell.cellIdentifier, for: indexPath)

        if let cell = cell as? HotGirlImageCollectionViewCell {
            cell.config(with: hotGirlImages[indexPath.row])
        }

        return cell
    }
}
