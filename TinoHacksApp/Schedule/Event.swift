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
    var location: String = ""
    
    init?(name: String, time: String, location: String) {
        self.name = name
        self.time = time
        self.location = location
        
        //Returns nil if no name, time, or day is given
        if name.isEmpty || time.isEmpty || location.isEmpty {
            return nil
        }
    }
}


