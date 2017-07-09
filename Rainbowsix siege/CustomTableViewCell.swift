//
//  CustomTableViewCell.swift
//  Rainbowsix siege
//
//  Created by 江口太郎 on 2017/06/25.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var customCellImage: UIImageView!
    @IBOutlet weak var customCellLabel: UILabel!
   

    
    
    override func awakeFromNib() {
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
