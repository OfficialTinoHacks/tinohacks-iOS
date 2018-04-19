//
//  ToolsCollectionViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 3/21/18.
//  Copyright © 2018 Tino Hacks. All rights reserved.
//

import UIKit
import SafariServices

private let reuseIdentifier = "tools"

class ToolsCollectionViewController: UICollectionViewController {
    
    @IBOutlet var toolsCollectionView: UICollectionView!
    
    let tools: [Tool] = [
        Tool(image: #imageLiteral(resourceName: "GithubStudent"), link: URL(string: "https://education.github.com/pack/")!)!,
        Tool(image: #imageLiteral(resourceName: "hackclub"), link: URL(string: "https://hackclub.com")!)!,
        Tool(image: #imageLiteral(resourceName: "hackplus"), link: URL(string: "https://hackplus.io")!)!,
        Tool(image: #imageLiteral(resourceName: "jetbrains"), link: URL(string: "https://www.jetbrains.com")!)!,
        Tool(image: #imageLiteral(resourceName: "makeschool"), link: URL(string: "https://www.makeschool.com")!)!,
        Tool(image: #imageLiteral(resourceName: "wolfram"), link: URL(string: "https://www.wolfram.com/language/")!)!,
        Tool(image: #imageLiteral(resourceName: "devpost"), link: URL(string: "https://devpost.com")!)!,
        Tool(image: #imageLiteral(resourceName: "twilio"), link: URL(string: "https://www.twilio.com")!)!,
        Tool(image: #imageLiteral(resourceName: "trello"), link: URL(string: "https://trello.com")!)!,
        Tool(image: #imageLiteral(resourceName: "slack"), link: URL(string: "https://slack.com")!)!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let layout = toolsCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
            layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            
            let width = UIScreen.main.bounds.width
            layout.itemSize = CGSize(width: width / 2, height: width / 2)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tools.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ToolsCollectionViewCell
    
        cell.imageView.image = tools[indexPath.row].image
        cell.url = tools[indexPath.row].link
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let safariViewController = SFSafariViewController(url: tools[indexPath.row].link)
        if #available(iOS 11.0, *) {
            safariViewController.dismissButtonStyle = SFSafariViewController.DismissButtonStyle.close
            safariViewController.preferredControlTintColor = UIColor(red:0.545, green:0.333, blue:0.741, alpha:1.000)
        }
        present(safariViewController, animated: true, completion: nil)
    }
}
