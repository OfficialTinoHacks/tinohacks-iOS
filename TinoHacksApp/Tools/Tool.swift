//
//  Tool.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 3/24/18.
//  Copyright © 2018 Tino Hacks. All rights reserved.
//

import UIKit

class Tool {
    var image: UIImage
    var link: URL
    
    init?(image: UIImage, link: URL) {
        self.image = image
        self.link = link
        
        if link.absoluteString.isEmpty {
            return nil
        }
    }
}
