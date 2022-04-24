//
//  AppleStoresLocation.swift
//  Apple Products
//
//  Created by Negar Tolou on 09.04.22.
//

import Foundation
import MapKit

struct AppleStoresLocation: Codable, Identifiable {
  var id: String
  var name: String
  var image: String
  var latitude: Double
  var longitude: Double
  
  // Computed Property
  var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}
