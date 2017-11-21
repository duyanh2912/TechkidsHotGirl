//
//  HotGirlImageCollectionViewCell.swift
//  TechkidsHotGirl
//
//  Created by Duy Anh on 21/11/17.
//  Copyright © 2017 Duy Anh. All rights reserved.
//

import UIKit
import SDWebImage

class HotGirlImageCollectionViewCell: UICollectionViewCell {
    static var identifier = "\(self)"

    @IBOutlet weak var hotGirlImageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(with hotGirlImage: HotGirlImage) {
        userNameLabel.text = hotGirlImage.poster.username
        userTitleLabel.text = hotGirlImage.poster.title
        hotGirlImageView.sd_setImage(with: URL(string: hotGirlImage.imageUrl))
        userImageView.sd_setImage(with: URL(string: hotGirlImage.poster.userAvatar))
    }
}
