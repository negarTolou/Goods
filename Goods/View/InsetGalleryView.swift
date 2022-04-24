//
//  InsetGalleryView.swift
//  Goods
//
//  Created by Negar Tolou on 10.04.22.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - Propertis
    let product: Product
    
    // MARK: BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 16) {
                ForEach(product.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: loop
            } //: Hstack
        } //: Scroll
        
    }
}


// MARK: Preview
struct InsetGalleryView_Previews: PreviewProvider {
    static var products: [Product] = Bundle.main.decode("products.json")
    
    static var previews: some View {
        InsetGalleryView(product: products[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
