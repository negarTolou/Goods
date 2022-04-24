//
//  InsetMapView.swift
//  Goods
//
//  Created by Negar Tolou on 10.04.22.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
  // MARK: - PROPERTIES
  
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.1937683, longitude: -94.8805222), span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60))

  // MARK: - BODY

  var body: some View {
    Map(coordinateRegion: $region)
      .overlay(
        NavigationLink(destination: MapView()) {
          HStack {
            Image(systemName: "mappin.circle")
              .foregroundColor(Color.white)
              .imageScale(.large)
            
            Text("Locations")
              .foregroundColor(.accentColor)
              .fontWeight(.bold)
          } //: HSTACK
          .padding(.vertical, 10)
          .padding(.horizontal, 14)
          .background(
            Color.black
              .opacity(0.4)
              .cornerRadius(8)
          )
        } //: NAVIGATION
        .padding(12)
        , alignment: .topTrailing
      )
      .frame(height: 256)
      .cornerRadius(12)
  }
}

// MARK: - PREVIEW

struct InsetMapView_Previews: PreviewProvider {
  static var previews: some View {
    InsetMapView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
