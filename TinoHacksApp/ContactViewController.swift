//
//  ContactViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 3/10/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func facebookButton(_ sender: Any) {
        if let fbLink = NSURL(string: "https://www.facebook.com/tinohacks/") {
            //UIApplication.shared.open(fbLink as URL, options: [:], completionHandler: nil)
            UIApplication.shared.open(fbLink as URL)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = "TinoHacks, a project of Hacker Fund, is a two day long, 350 person hackathon hosted by Cupertino High School students where both new and experienced programmers can work together on projects, learn new skills, and have a splendid time. "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
