//
//  BotomCollectionViewCell.swift
//  Smart City
//
//  Created by Mahmoud on 3/16/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class BotomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bottomImage: UIImageView!
    @IBOutlet weak var myLable: UILabel!
    override func awakeFromNib() {
        myLable.isHidden = false
    }
}
