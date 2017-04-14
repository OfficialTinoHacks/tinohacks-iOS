//
//  Award.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/13/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class Award: NSObject {
    let image: UIImage
    let category: String
    let name: String
    
    init(image: UIImage, category: String, name: String) {
        self.image = image
        self.category = category
        self.name = name
    }
}
