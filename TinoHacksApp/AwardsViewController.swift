//
//  AwardsViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/13/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class AwardsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var awardsTable: UITableView!
    let awards: [Award] = [Award.init(image: #imageLiteral(resourceName: "beginner"), category: "Best Beginner Hack", name: "4 JetBrains Licenses"),
                           Award.init(image: #imageLiteral(resourceName: "beginner"), category: "Best Beginner Hack", name: "$2K Scholarship for MakeSchool"),
                           Award.init(image: #imageLiteral(resourceName: "spectacles"), category: "Best Overall Hack", name: "Spectacles by Snap Inc."),
                           Award.init(image: #imageLiteral(resourceName: "echodot"), category: "Second Place Overall Hack", name: "Amazon Echo Dot"),
                           Award.init(image: #imageLiteral(resourceName: "mega"), category: "Third Place Overall Hack", name: "Megaverse Anti-Gravity Megapack"),
                           Award.init(image: #imageLiteral(resourceName: "wolframalpha"), category: "Top 5 Hacks", name: "Wolfram Alpha Bundle"),
                           Award.init(image: #imageLiteral(resourceName: "wolframalpha"), category: "Top 10 Hacks", name: "Wolfram Alpha Pro"),
                           Award.init(image: #imageLiteral(resourceName: "paloalto"), category: "Best Trend Analysis Hack", name: "Palo Alto Networks Pack"),
                           Award.init(image: #imageLiteral(resourceName: "tech"), category: "Best Use of .tech Domains", name: "$200 Amazon Gift Voucher"),
                           Award.init(image: #imageLiteral(resourceName: "logo"), category: "Organizer's Pick", name: "Lunch & Tour at the Github HQ"),
                           Award.init(image: #imageLiteral(resourceName: "domain"), category: "Best Domain Name from Domain.com", name: "Domain.com Swag Bag"),
                           Award.init(image: #imageLiteral(resourceName: "hackharassment"), category: "#HackHarassment", name: "Hack Harassment Battery Packs"),
                           Award.init(image: #imageLiteral(resourceName: "ebay"), category: "Best E-Commerce Hack", name: "Drones & E-Bay Swag Bags")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return awards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = awardsTable.dequeueReusableCell(withIdentifier: "Award", for: indexPath) as! AwardTableViewCell
        let awardCell = awards[indexPath.row]
        
        cell.picture.image = awardCell.image
        cell.category.text = awardCell.category
        cell.name.text = awardCell.name
        
        cell.selectionStyle = .none
        
        return cell
    }
}
