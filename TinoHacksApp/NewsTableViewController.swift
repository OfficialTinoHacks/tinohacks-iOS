//
//  NewsTableViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/7/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class NewsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var newsFeed: UITableView!
    
    static var newsData: [NewsItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        self.newsFeed.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsTableViewController.newsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsFeed.dequeueReusableCell(withIdentifier: "news", for: indexPath) as! NewsTableViewCell
        cell.title.text = NewsTableViewController.newsData[indexPath.row].title
        cell.body.text = NewsTableViewController.newsData[indexPath.row].body
        cell.date.text = timeAgoSinceDate(NewsTableViewController.newsData[indexPath.row].date)
        cell.selectionStyle = .none
        return cell
    }
    
    func timeAgoSinceDate(_ date:Date, numericDates:Bool = false) -> String {
        let calendar = Calendar.current
        let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfYear, .month, .year, .second]
        let now = Date()
        let earliest = now < date ? now : date
        let latest = (earliest == now) ? date : now
        let components = calendar.dateComponents(unitFlags, from: earliest,  to: latest)
        
        if (components.year! >= 2) {
            return "\(components.year!) years ago"
        }
        else if (components.year! >= 1){
            if (numericDates){
                return "1 year ago"
            }
            else {
                return "Last year"
            }
        }
        else if (components.month! >= 2) {
            return "\(components.month!) months ago"
        }
        else if (components.month! >= 1){
            if (numericDates){
                return "1 month ago"
            }
            else {
                return "Last month"
            }
        }
        else if (components.weekOfYear! >= 2) {
            return "\(components.weekOfYear!) weeks ago"
        }
        else if (components.weekOfYear! >= 1){
            if (numericDates){
                return "1 week ago"
            }
            else {
                return "Last week"
            }
        }
        else if (components.day! >= 2) {
            return "\(components.day!) days ago"
        }
        else if (components.day! >= 1){
            if (numericDates){
                return "1 day ago"
            }
            else {
                return "Yesterday"
            }
        }
        else if (components.hour! >= 2) {
            return "\(components.hour!) hours ago"
        }
        else if (components.hour! >= 1){
            if (numericDates){
                return "1 hour ago"
            }
            else {
                return "An hour ago"
            }
        }
        else if (components.minute! >= 2) {
            return "\(components.minute!) minutes ago"
        }
        else if (components.minute! >= 1){
            if (numericDates){
                return "1 minute ago"
            }
            else {
                return "A minute ago"
            }
        }
        else if (components.second! >= 3) {
            return "\(components.second!) seconds ago"
        }
        else {
            return "Just now"
        }
        
    }
}
