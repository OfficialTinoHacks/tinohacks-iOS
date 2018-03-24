//
//  Event.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 2/13/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class Event {
    var name: String = ""
    var time: String = ""
    var day: String = ""
    
    init?(name: String, time: String, day: String) {
        self.name = name
        self.time = time
        self.day = day
        
        //Returns nil if no name, time, or day is given
        if name.isEmpty || time.isEmpty || day.isEmpty {
            return nil
        }
    }
}


