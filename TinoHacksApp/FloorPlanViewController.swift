//
//  FloorPlanViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/14/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit

class FloorPlanViewController: UIViewController {
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pdf = Bundle.main.url(forResource: "floorplan", withExtension: "pdf", subdirectory: nil, localization: nil) {
            do {
                let data = try Data(contentsOf: pdf)
                webView.load(data, mimeType: "application/pdf", textEncodingName: "", baseURL: pdf.deletingLastPathComponent())
            }
            catch {
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
