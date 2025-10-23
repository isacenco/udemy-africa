//
//  MapView.swift
//  Africa
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        
        // MARK: - No1 basic map
        //Map(coordinateRegion: $region)
        
        // MARK: - No2 Map with anotations
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // (A) PIN: OLD STYLE (always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: NEW STILE (always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION (could be interactive)
            
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //: ANNOTATION
        }
    }
}

// MARK: - PREVIEW
#Preview {
    MapView()
}
