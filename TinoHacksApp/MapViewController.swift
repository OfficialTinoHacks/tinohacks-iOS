//
//  MapViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 3/10/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    var region = MKCoordinateRegion()
    //37.394400, -122.099796

    override func viewDidLoad() {
        super.viewDidLoad()
        region.center.latitude = 37.394400
        region.center.longitude = -122.099796
        region.span.latitudeDelta = 0.001
        region.span.longitudeDelta = 0.001
        mapView.setRegion(region, animated: true)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
