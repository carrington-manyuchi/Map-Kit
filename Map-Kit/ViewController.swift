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

        //declare location manager
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        

        let jhb = Capital(coordinate: CLLocationCoordinate2D(latitude: 28.0400245, longitude: -26.1715215), info: "Capital of UK")
        
        mapView.addAnnotation(jhb)
    }


    //called everytime location changes
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        /**
        // shortcuts
        guard let value = manager.location?.coordinate else { return }
        let latitude = value.latitude
        let longitude = value.longitude
        
        //user location
        let center = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
        
        //add pin
        self.mapView.removeAnnotations(self.mapView.annotations)
        let pin = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = pin
        annotation.title = "Your Location"
        self.mapView.addAnnotation(annotation)
         */
    }
}

