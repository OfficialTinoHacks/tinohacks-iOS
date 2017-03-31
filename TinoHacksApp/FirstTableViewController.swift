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
        Event(name: "Sponsor/Mentor Check-In", time: "8:00 AM", day: "SAT", location: "42 SV")!,
        Event(name: "Hacker Check-In", time: "9:00 AM", day: "SAT", location: "42 SV")!,
        Event(name: "Sponsor Expo", time: "9:00 AM", day: "SAT", location: "42 SV")!,
        Event(name: "Team Mixer", time: "9:00 AM", day: "SAT", location: "42 SV")!,
        Event(name: "Kickoff", time: "10:00 AM", day: "SAT", location: "42 SV")!,
        Event(name: "Hacking Begins", time: "11:00 AM", day: "SAT", location: "42 SV")!,
        Event(name: "Veg Lunch", time: "11:35 AM", day: "SAT", location: "42 SV")!,
        Event(name: "Non-veg Lunch", time: "12:00 PM", day: "SAT", location: "42 SV")!,
        Event(name: "Activites Begin", time: "1:30 PM", day: "SAT", location: "42 SV")!,
        Event(name: "Veg Dinner", time: "7:00 PM", day: "SAT", location: "42 SV")!,
        Event(name: "Non-veg Lunch", time: "7:25 PM", day: "SAT", location: "42 SV")!,
        Event(name: "Cup Stacking", time: "9:00 PM", day: "SAT", location: "42 SV")!,
        Event(name: "League Competition", time: "10:30 PM", day: "SAT", location: "42 SV")!,
        Event(name: "Snack", time: "11:42 PM", day: "SAT", location: "42 SV")!,
        Event(name: "Veg Breakfast", time: "7:42 AM", day: "SUN", location: "42 SV")!,
        Event(name: "Non-veg Breakfast", time: "8:05 AM", day: "SUN", location: "42 SV")!,
        Event(name: "Submissions", time: "10:30 AM", day: "SUN", location: "42 SV")!,
        Event(name: "Hacking Ends", time: "11:00 AM", day: "SUN", location: "42 SV")!,
        Event(name: "Pitches + Judging", time: "11:45 AM", day: "SUN", location: "42 SV")!,
        Event(name: "Closing Ceremony", time: "12:55 PM", day: "SUN", location: "42 SV")!
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
            cell.eventDay.backgroundColor = UIColor(red: 0.7765, green: 0, blue: 0.898, alpha: 1.0)
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
