//
//  Video.swift
//  Apple Products
//
//  Created by Negar Tolou on 09.04.22.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
