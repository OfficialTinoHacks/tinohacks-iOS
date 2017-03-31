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
        region.center.latitude = 37.548621
        region.center.longitude = -122.059036
        region.span.latitudeDelta = 0.001
        region.span.longitudeDelta = 0.001
        mapView.setRegion(region, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
