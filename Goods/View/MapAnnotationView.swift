//
//  MapAnnotationView.swift
//  Apple Products
//
//  Created by Negar Tolou on 10.04.22.
//

import SwiftUI


struct MapAnnotationView: View {
  // MARK: - PROPERTIES
  
  var location: AppleStoresLocation
  @State private var animation: Double = 0.0
  
  // MARK: - BODY

  var body: some View {
    ZStack {
      Circle()
        .fill(Color.accentColor)
        .frame(width: 40, height: 40, alignment: .center)
      
      Circle()
        .stroke(Color.accentColor, lineWidth: 2)
        .frame(width: 36, height: 36, alignment: .center)
        .scaleEffect(1 + CGFloat(animation))
        .opacity(1 - animation)
      
      Image(location.image)
        .resizable()
        .scaledToFit()
        .frame(width: 32, height: 32, alignment: .center)
        .clipShape(Circle())
    } //: ZSTACK
    .onAppear {
      withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
        animation = 1
      }
      
      
    }
  }
    
}

// MARK: - PREVIEW

struct MapAnnotationView_Previews: PreviewProvider {
  static var locations: [AppleStoresLocation] = Bundle.main.decode("locations.json")
  
  static var previews: some View {
    MapAnnotationView(location: locations[0])
      .previewLayout(.sizeThatFits)
      .padding()
      .preferredColorScheme(.dark)
      
  }
}
