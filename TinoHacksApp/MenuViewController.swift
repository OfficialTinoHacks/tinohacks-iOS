//
//  MenuViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 1/21/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class MenuViewController: UITabBarController {

       override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.selectedItem?.badgeColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
