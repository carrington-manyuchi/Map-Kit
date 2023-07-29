//
//  ViewController.swift
//  Map-Kit
//
//  Created by DA MAC M1 157 on 2023/07/29.
//

import UIKit
import Foundation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    //ui obj
    @IBOutlet weak var mapView: MKMapView!
 
    //code obj
    var locationManager: CLLocationManager!
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        

    }


    //called everytime location changes
    func locationManagerDidPauseLocationUpdates(_ manager: CLLocationManager) {
        let value = manager.location?.coordinate
        let latitude
    }
}

