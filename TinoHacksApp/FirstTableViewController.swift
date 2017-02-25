//
//  FirstTableViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 2/21/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class FirstTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //Sample Schedule
    let events: [Event] = [
        Event(name: "Mentor/Sponsor Check-in", time: "10:00 AM", day: "SAT")!,
        Event(name: "Hacker Check-in", time: "11:00 AM", day: "SAT")!,
        Event(name: "Opening", time: "12:00 PM", day: "SAT")!,
        Event(name: "Team Mixer", time: "5 PM", day: "SAT")!,
        Event(name: "Dinner", time: "8 PM", day: "SAT")!,
        Event(name: "Midnight Snack", time: "12:00 AM", day: "SUN")!,
        Event(name: "Breakfast", time: "8:00 AM", day: "SUN")!,
        Event(name: "Hacking Ends", time: "10:00 AM", day: "SUN")!,
        Event(name: "Lunch", time: "12:00 PM", day: "SUN")!,
        Event(name: "Judging", time: "3:00 PM", day: "SUN")!,
        Event(name: "Closing", time: "7:00 PM", day: "SUN")!
    ]
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! EventsTableViewCell
        cell.eventName.text = events[indexPath.row].name
        cell.eventDate.text = events[indexPath.row].time
        cell.eventDay.text = events[indexPath.row].day
        if events[indexPath.row].day == "SAT" {
            cell.eventDay.backgroundColor = UIColor(red: 0, green: 0.4667, blue: 0.9098, alpha: 1.0)
        }
        else {
            cell.eventDay.backgroundColor = UIColor(red: 0.7961, green: 0, blue: 1, alpha: 1.0)
        }
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
