//
//  PreviewView.swift
//  NetflixClone
//
//  Created by Javier Galera Garrido on 05/02/2021.
//

import SwiftUI

struct PreviewView: View {
    
    @ObservedObject var previewVM: PreviewViewModel
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            TrailerPlayerView(videoURL: previewVM.movie.trailers.first?.videoURL,
                              playVideo: .constant(true))
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(previewVM.movie.name)
                            .bold()
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 60)
                
                Spacer()
                
                HStack {
                    ForEach(0..<previewVM.movie.categories.count) { categoryIndex in
                        let category = previewVM.movie.categories[categoryIndex]
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if categoryIndex != previewVM.movie.categories.count - 1 {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List",
                                        isOnImage: "checkmark",
                                        isOffImage: "plus",
                                        color: previewVM.movie.accentColor,
                                        isOn: true){
                        //
                    }
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "arrowtriangle.right.fill")
                            Text("PLAY")
                                .fontWeight(.heavy)
                        }
                        .padding(.vertical, 12)
                        .padding(.horizontal, 26)
                        .border(previewVM.movie.accentColor, width: 3)
                    })
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info",
                                        isOnImage: "info.circle",
                                        isOffImage: "info.circle",
                                        color: previewVM.movie.accentColor,
                                        isOn: true){
                        //
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 14)
            }
            .padding(.bottom, 48)
            .foregroundColor(previewVM.movie.accentColor)
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView(previewVM: PreviewViewModel(movie: exampleMovie1))
    }
}
