//
//  Capital.swift
//  Map-Kit
//
//  Created by DA MAC M1 157 on 2023/07/29.
//

import UIKit
import MapKit


// NSObject is the first class of any object in IOSm dvpt
class Capital: NSObject, MKAnnotation {
    
    // class coknstructor
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    //initializer of class
    init(title: String? = nil, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
    

}
