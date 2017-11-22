//
//  HotGirlImageCollectionViewCell.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import UIKit
import SDWebImage

class HotGirlImageCollectionViewCell: UICollectionViewCell, CollectionViewRegisterable {
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var hotGirlImageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        widthConstraint.constant = UIScreen.main.bounds.width
        
        userImageView.layer.cornerRadius = userImageView.bounds.width / 2
        userImageView.clipsToBounds = true
        
        hotGirlImageView.sd_setShowActivityIndicatorView(true)
        hotGirlImageView.sd_setIndicatorStyle(.gray)
    }
    
    func config(with hotGirlImage: HotGirlImage) {
        userNameLabel.text = hotGirlImage.poster.username
        userTitleLabel.text = hotGirlImage.poster.title
        hotGirlImageView.sd_setImage(with: hotGirlImage.imageUrl)
        userImageView.sd_setImage(with: hotGirlImage.poster.userAvatar)
//        hotGirlImageView.sd_setImage(with: hotGirlImage.imageUrl) { image in
//
//        }
    }
}
