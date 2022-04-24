//
//  HeadingView.swift
//  Goods
//
//  Created by Negar Tolou on 10.04.22.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    
    //MARK: BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        } //: Hstack
        .padding(.vertical)
    }
}


// MARK: PREVIEW
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "a")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
