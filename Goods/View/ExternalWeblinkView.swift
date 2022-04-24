//
//  HeadingView.swift
//  Goods
//
//  Created by Negar Tolou on 10.04.22.
//

import SwiftUI

struct ExternalWeblinkView: View {
  // MARK: - PROPERTIES
  
  let product: Product

  // MARK: - BODY

  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("Apple")
        Spacer()
        
        Group {
          Image(systemName: "arrow.up.right.square")
          
          Link(product.name, destination: (URL(string: product.link) ?? URL(string: "https://www.apple.com"))!)
        }
        .foregroundColor(.accentColor)
      } //: HSTACK
    } //: BOX
  }
}

// MARK: - PREIVEW

struct ExternalWeblinkView_Previews: PreviewProvider {
  static let products: [Product] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    ExternalWeblinkView(product: products[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
