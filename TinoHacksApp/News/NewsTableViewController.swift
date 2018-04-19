//
//  NewsTableViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/7/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit
import Alamofire

class NewsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var newsFeed: UITableView!
    
    var newsData: [NewsItem] = []
    
    let REST_API_KEY = "OTRmMDEyODQtZThiZC00ZTgyLWIyZjQtMmYxY2ViZjEwYmNm"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshTable()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsFeed.dequeueReusableCell(withIdentifier: "news", for: indexPath) as! NewsTableViewCell
        cell.title.text = newsData[indexPath.row].title
        cell.body.text = newsData[indexPath.row].body
        cell.date.text = newsData[indexPath.row].date
        cell.selectionStyle = .none
        return cell
    }
    
    func refreshTable() {
        self.newsData.removeAll()
        self.newsFeed.reloadData()
        
        let headers: HTTPHeaders =  [
            "Authorization": "Basic \(REST_API_KEY)"
        ]
        
        Alamofire.request("https://onesignal.com/api/v1/notifications?app_id=f007ff53-ebb8-454e-8de5-16c3e75036e7&limit=50&offset=0", headers: headers).responseJSON { (response) in
            switch response.result {
            case .success:
                let result = response.result.value as! NSDictionary
                let notifications = result["notifications"] as! NSArray
                for notification in notifications {
                    let item = notification as! NSDictionary
                    let contents = item["contents"] as! NSDictionary
                    let headings = item["headings"] as! NSDictionary
                    self.newsData.append(NewsItem(title: headings["en"] as! String, body: contents["en"] as! String, date: item["delivery_time_of_day"] as! String))
                    self.newsFeed.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
