//
//  VideoPlayerView.swift
//  Apple Products
//
//  Created by Negar Tolou on 16.04.22.
//
import SwiftUI
import AVKit

struct VideoPlayerView: View {
  // MARK: - PROPERTIES
  
  var videoSelected: String
  var videoTitle: String

  // MARK: - BODY

  var body: some View {
    VStack {
//        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "iphone", withExtension: "mp4")!))
        
      VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
          }
      .overlay(
        Image("appleCover")
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32)
          .padding(.top, 6)
          .padding(.horizontal, 8)
        , alignment: .topLeading
        
        
      )
    } //: VSTACK
    .accentColor(.accentColor)
    .navigationBarTitle(videoTitle, displayMode: .inline)
  }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      VideoPlayerView(videoSelected: "iphone", videoTitle: "iPhone 13 Pro Max")
    }
  }
}
