//
//  Tool.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 3/24/18.
//  Copyright © 2018 Tino Hacks. All rights reserved.
//

import UIKit

class Tool {
    var name: String
    var color: UIColor
    
    init?(name: String, color: UIColor) {
        self.name = name
        self.color = color
        
        if name.isEmpty {
            return nil
        }
    }
}
