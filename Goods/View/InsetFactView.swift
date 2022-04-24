//
//  InsetFactView.swift
//  Goods
//
//  Created by Negar Tolou on 09.04.22.
//

import SwiftUI

struct InsetFactView: View {
  // MARK: - PROPERTIES
  
  let product: Product

  // MARK: - BODY

  var body: some View {
    GroupBox {
      TabView {
        ForEach(product.fact, id: \.self) { item in
          Text(item)
        }
      } //: TABS
      .tabViewStyle(PageTabViewStyle())
      .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
    } //: BOX
  }
}

// MARK: - PREVIEW

struct InsetFactView_Previews: PreviewProvider {
  static let products: [Product] = Bundle.main.decode("products.json")
  
  static var previews: some View {
    InsetFactView(product: products[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
