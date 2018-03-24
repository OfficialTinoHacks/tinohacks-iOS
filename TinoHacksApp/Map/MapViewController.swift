//
//  MapViewController.swift
//  TinoHacksApp
//
//  Created by Kashyap Panda on 3/10/17.
//  Copyright © 2017 Tino Hacks. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    var locationManager: CLLocationManager!
    
    let latitude = 37.548621
    let longitude = -122.059036
    let pin = MKPointAnnotation()
    
    var region = MKCoordinateRegion()
    //37.394400, -122.099796

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        let status = CLLocationManager.authorizationStatus()
        if status == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
            return
        }
        
        region.center.latitude = 37.548621
        region.center.longitude = -122.059036
        region.span.latitudeDelta = 0.001
        region.span.longitudeDelta = 0.001
        mapView.setRegion(region, animated: false)
        
        pin.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        pin.title = "TinoHacks"
        pin.subtitle = "42 Silicon Valley, 6600 Dumbarton Cir, Fremont, CA 94555"
        mapView.addAnnotation(pin)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewDidLoad()
        
        if CLLocationManager.authorizationStatus() == .notDetermined {
            mapView.showsUserLocation = false
        }
        else {
            mapView.showsUserLocation = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
