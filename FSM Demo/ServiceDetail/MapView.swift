//
//  MapView.swift
//  FSM Demo
//
//  Created by Madhusudhanan G on 12/07/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
    
    private struct Place: Identifiable {
        let id = UUID()
        let coordinate: CLLocationCoordinate2D
    }
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [Place(coordinate: region.center)]) { place in
            MapMarker(coordinate: place.coordinate, tint: .black)
        }
        .frame(height: 200)
        .cornerRadius(20)
        .padding()
    }
    
}

