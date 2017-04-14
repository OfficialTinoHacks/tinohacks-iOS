//
//  AwardTableViewCell.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/13/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class AwardTableViewCell: UITableViewCell {
    @IBOutlet var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var category: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
