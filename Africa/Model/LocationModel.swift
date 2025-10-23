//
//  LocationModel.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 23/10/2025.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    // COMPUTED PROPERTY
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
