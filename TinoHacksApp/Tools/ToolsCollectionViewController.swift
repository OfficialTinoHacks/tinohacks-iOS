//
//  ToolsCollectionViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 3/21/18.
//  Copyright © 2018 Tino Hacks. All rights reserved.
//

import UIKit

private let reuseIdentifier = "tools"

class ToolsCollectionViewController: UICollectionViewController {
    
    @IBOutlet var toolsCollectionView: UICollectionView!
    
    let tools: [Tool] = [
        Tool(name: "Tool 1", color: UIColor.red)!,
        Tool(name: "Tool 2", color: UIColor.orange)!,
        Tool(name: "Tool 3", color: UIColor.yellow)!,
        Tool(name: "Tool 4", color: UIColor.green)!,
        Tool(name: "Tool 5", color: UIColor.blue)!,
        Tool(name: "Tool 6", color: UIColor.purple)!,
        Tool(name: "Tool 1", color: UIColor.red)!,
        Tool(name: "Tool 2", color: UIColor.orange)!,
        Tool(name: "Tool 3", color: UIColor.yellow)!,
        Tool(name: "Tool 4", color: UIColor.green)!,
        Tool(name: "Tool 5", color: UIColor.blue)!,
        Tool(name: "Tool 6", color: UIColor.purple)!,
        Tool(name: "Tool 1", color: UIColor.red)!,
        Tool(name: "Tool 2", color: UIColor.orange)!,
        Tool(name: "Tool 3", color: UIColor.yellow)!,
        Tool(name: "Tool 4", color: UIColor.green)!,
        Tool(name: "Tool 5", color: UIColor.blue)!,
        Tool(name: "Tool 6", color: UIColor.purple)!,
        Tool(name: "Tool 1", color: UIColor.red)!,
        Tool(name: "Tool 2", color: UIColor.orange)!,
        Tool(name: "Tool 3", color: UIColor.yellow)!,
        Tool(name: "Tool 4", color: UIColor.green)!,
        Tool(name: "Tool 5", color: UIColor.blue)!,
        Tool(name: "Tool 6", color: UIColor.purple)!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
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
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return tools.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ToolsCollectionViewCell
    
        // Configure the cell
        cell.title.text = tools[indexPath.row].name
        cell.backgroundColor = tools[indexPath.row].color
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
