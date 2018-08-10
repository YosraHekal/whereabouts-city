//
//  DroppablePin.swift
//  whereabouts-city
//
//  Created by Yosra H. Hekal on 11.08.18.
//  Copyright © 2018 Yosra H. Hekal. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifire: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifire = identifier
        super.init()
    }
    
    
}
