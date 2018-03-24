//
//  FirstTableViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 2/21/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class FirstTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var scheduleView: UITableView!
    
    let sections = ["Saturday", "Sunday"]
    
    let satEvents: [Event] = [
        Event(name: "Sponsor/Mentor Check-In", time: "8:00 AM", day: "SAT")!,
        Event(name: "Hacker Check-In", time: "9:00 AM", day: "SAT")!,
        Event(name: "Sponsor Expo", time: "9:00 AM", day: "SAT")!,
        Event(name: "Team Mixer", time: "9:00 AM", day: "SAT")!,
        Event(name: "Kickoff", time: "10:00 AM", day: "SAT")!,
        Event(name: "Hacking Begins", time: "11:00 AM", day: "SAT")!,
        Event(name: "Veg Lunch", time: "11:35 AM", day: "SAT")!,
        Event(name: "Non-veg Lunch", time: "12:00 PM", day: "SAT")!,
        Event(name: "Activites Begin", time: "1:30 PM", day: "SAT")!,
        Event(name: "Veg Dinner", time: "7:00 PM", day: "SAT")!,
        Event(name: "Non-veg Lunch", time: "7:25 PM", day: "SAT")!,
        Event(name: "Cup Stacking", time: "9:00 PM", day: "SAT")!,
        Event(name: "League Competition", time: "10:30 PM", day: "SAT")!,
        Event(name: "Snack", time: "11:42 PM", day: "SAT")!,
    ]
    
    let sunEvents: [Event] = [
        Event(name: "Veg Breakfast", time: "7:42 AM", day: "SUN")!,
        Event(name: "Non-veg Breakfast", time: "8:05 AM", day: "SUN")!,
        Event(name: "Submissions", time: "10:30 AM", day: "SUN")!,
        Event(name: "Hacking Ends", time: "11:00 AM", day: "SUN")!,
        Event(name: "Pitches + Judging", time: "11:45 AM", day: "SUN")!,
        Event(name: "Closing Ceremony", time: "12:55 PM", day: "SUN")!
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return satEvents.count
        case 1:
            return sunEvents.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! EventsTableViewCell
        
        switch indexPath.section {
        case 0:
            cell.eventName.text = satEvents[indexPath.row].name
            cell.eventDate.text = satEvents[indexPath.row].time
            cell.eventDay.text = satEvents[indexPath.row].day
            cell.eventDay.backgroundColor = UIColor(red:0.137, green:0.639, blue:0.992, alpha:1.000)
            break
        case 1:
            cell.eventName.text = sunEvents[indexPath.row].name
            cell.eventDate.text = sunEvents[indexPath.row].time
            cell.eventDay.text = sunEvents[indexPath.row].day
            cell.eventDay.backgroundColor = UIColor(red: 0.7765, green: 0, blue: 0.898, alpha: 1.0)
            break
        default:
            break
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let subviews = cell.subviews
        if subviews.count >= 3 {
            for subview in subviews {
                if subview != cell.contentView {
                    subview.removeFromSuperview()
                    break
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.00001
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scheduleView.separatorStyle = UITableViewCellSeparatorStyle.none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
