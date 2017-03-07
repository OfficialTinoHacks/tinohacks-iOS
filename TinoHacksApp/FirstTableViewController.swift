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
    
    //Sample Schedule
    let events: [Event] = [
        Event(name: "Mentor/Sponsor Check-in", time: "10:00 AM", day: "SAT", location: "Room 1")!,
        Event(name: "Hacker Check-in", time: "11:00 AM", day: "SAT", location: "Room 2")!,
        Event(name: "Opening", time: "12:00 PM", day: "SAT", location: "Room 3")!,
        Event(name: "Team Mixer", time: "5 PM", day: "SAT", location: "Room 4")!,
        Event(name: "Dinner", time: "8 PM", day: "SAT", location: "Room 3")!,
        Event(name: "Midnight Snack", time: "12:00 AM", day: "SUN", location: "Room 2")!,
        Event(name: "Breakfast", time: "8:00 AM", day: "SUN", location: "Room 1")!,
        Event(name: "Hacking Ends", time: "10:00 AM", day: "SUN", location: "Room 404")!,
        Event(name: "Lunch", time: "12:00 PM", day: "SUN", location: "Room 100")!,
        Event(name: "Judging", time: "3:00 PM", day: "SUN", location: "Ted Mcleod's Room")!,
        Event(name: "Closing", time: "7:00 PM", day: "SUN", location: "Ha!")!
    ]
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! EventsTableViewCell
        cell.eventName.text = events[indexPath.row].name
        cell.eventDate.text = events[indexPath.row].time
        cell.eventDay.text = events[indexPath.row].day
        cell.eventLocation.text = events[indexPath.row].location
        if events[indexPath.row].day == "SAT" {
            cell.eventDay.backgroundColor = UIColor(red:0.137, green:0.639, blue:0.992, alpha:1.000)
        }
        else {
            cell.eventDay.backgroundColor = UIColor(red: 0.7961, green: 0, blue: 1, alpha: 1.0)
        }
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleView.separatorStyle = .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
