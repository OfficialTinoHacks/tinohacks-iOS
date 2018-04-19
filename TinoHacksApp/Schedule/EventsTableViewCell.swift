//
//  EventsTableViewCell.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 2/21/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class EventsTableViewCell: UITableViewCell {
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var eventLocation: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
