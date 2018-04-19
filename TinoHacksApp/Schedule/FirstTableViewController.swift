//
//  FirstTableViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 2/21/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit
import FirebaseDatabase

class FirstTableViewController: UITableViewController {
    
    var events: [Event]! = []
    var refresher: UIRefreshControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresher = UIRefreshControl()
        self.tableView.refreshControl = refresher
        refresher.addTarget(self, action: #selector(refreshTable), for: UIControlEvents.valueChanged)
        
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.singleLine
        
        refreshTable()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! EventsTableViewCell
        cell.eventName.text = events[indexPath.row].name
        cell.eventDate.text = events[indexPath.row].time
        cell.eventLocation.text = events[indexPath.row].location
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
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
    
    @objc func refreshTable() {
        self.events.removeAll()
        Database.database().reference().child("schedule").observe(DataEventType.childAdded) { (snapshot: DataSnapshot) in
            if let postDict = snapshot.value as? [String: Any] {
                var event: Event
                let place = postDict["place"] as! String
                let title = postDict["title"] as! String
                let time = postDict["time"] as! String
                event = Event(name: title, time: time, location: place)!
                self.events.insert(event, at: 0)
                self.tableView.reloadData()
                self.refresher.endRefreshing()
            }
        }
    }
}
