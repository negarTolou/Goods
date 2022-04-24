//
//  ContentView.swift
//  Apple Products
//
//  Created by Negar Tolou on 09.04.22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    
    var body: some View  {
        let products: [Product] = Bundle.main.decode("products.json")
        
        //MARK: - BODY
        NavigationView{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(products) { product in
                    NavigationLink(destination: ProductDetailView(product: product)){
                    
                    ProductsListItemView(product: product)
                    } //: NavigationLink
                } //: loop
                
            } //: List
            .navigationBarTitle("Apple Products", displayMode: .large)
        } //: Navigation
    } //: body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
