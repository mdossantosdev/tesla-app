//
//  LocationView.swift
//  Tesla
//
//  Created by Marc on 02/07/2023.
//

import SwiftUI
import MapKit

struct LocationView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var location = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8592, longitude: 2.2938),
        span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
    )
    
    var body: some View {
        ZStack {
            Map(
                coordinateRegion: $location,
                annotationItems: carLocations,
                annotationContent: { location in
                    MapAnnotation(coordinate: location.coordinate) {
                        CarPin()
                    }
                }
            )
            
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        GeneralButton(icon: "chevron.left")
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        GeneralButton(icon: "speaker.wave.2.fill")
                    }
                }
                .padding()
                
                Spacer()
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundColor(Color.white)
        .toolbar(.hidden)
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
