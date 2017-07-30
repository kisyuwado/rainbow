//
//  CustomTableViewCell1.swift
//  Rainbowsix siege
//
//  Created by 江口太郎 on 2017/07/30.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class CustomTableViewCell1: UITableViewCell {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var customCellLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
