//
//  FloorPlanViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 4/14/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit
import PDFKit

class FloorPlanViewController: UIViewController {

    let pdfTitle = "floorplan"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: pdfTitle, withExtension: "pdf") {
            let webView = UIWebView(frame: UIScreen.main.bounds)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest)
            webView.scalesPageToFit = true
            self.view.addSubview(webView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
