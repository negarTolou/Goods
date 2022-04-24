//
//  Product.swift
//  Apple Products
//
//  Created by Negar Tolou on 08.04.22.
//
import SwiftUI

struct Product: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}
