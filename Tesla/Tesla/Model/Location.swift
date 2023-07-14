//
//  Location.swift
//  Tesla
//
//  Created by Marc on 02/07/2023.
//

import Foundation
import MapKit

struct CarLocation: Identifiable {
    let id = UUID()
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

let carLocations: [CarLocation] = [CarLocation(latitude: 48.8664, longitude: 2.3053)]
