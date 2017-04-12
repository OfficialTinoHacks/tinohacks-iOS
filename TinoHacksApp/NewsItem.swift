//
//  NewsItem.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/10/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class NewsItem: NSObject {
    let title: String
    let body: String
    let date: Date
    
    init(title: String, body: String, date: Date) {
        self.title = title
        self.body = body
        self.date = date
    }
}
