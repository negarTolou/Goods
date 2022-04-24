//
//  ProductsListItemView.swift
//  Apple Products
//
//  Created by Negar Tolou on 09.04.22.
//

import SwiftUI

struct ProductsListItemView: View {
    //MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                    )
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(product.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: Vstack
        } //: Hstack
    }
}

// MARK: - Preview
struct ProductsListItemView_Previews: PreviewProvider {
    
    static let animals: [Product] = Bundle.main.decode("products.json")
    
    static var previews: some View {
        ProductsListItemView(product: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
    

}


