//
//  ProductDetailView.swift
//  Goods
//
//  Created by Negar Tolou on 10.04.22.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    let product: Product
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                //Image
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                //Tilte
                Text(product.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                
                //HeadLine
                Text(product.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //Gallery
                
                Group{
                    HeadingView(headingImage: "photo.on.rectabngle.angled", headingText: "I 🤍 apple products")
                    InsetGalleryView(product: product)
                } //: Group
                .padding(.horizontal)
                
                //Facts
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(product: product)
                }
                
                //Description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(product.name)")
                 
                    Text(product.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(2)
                }

                
                // MAP
                Group{
                    HeadingView(headingImage: "map", headingText: "Shop Branches")
                 InsetMapView()
                } .padding(.horizontal)
                
                // Link
                Group {
                  HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                  
                  ExternalWeblinkView(product: product)
                }
                .padding(.horizontal)
                
                
            } //: Vstack
            .navigationBarTitle("Discover the perfect \(product.name)", displayMode: .inline)
        }//: Scroll
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    
    
    static let products: [Product] = Bundle.main.decode("products.json")
    
    static var previews: some View {
        NavigationView{
        ProductDetailView(product: products[3])
                .preferredColorScheme(.dark)
        }
        .previewDevice("iPhone 12 Pro Max")
        
    }
}
