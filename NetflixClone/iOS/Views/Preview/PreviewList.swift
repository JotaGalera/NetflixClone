//
//  PreviewList.swift
//  NetflixClone
//
//  Created by Javier Galera Garrido on 05/02/2021.
//

import SwiftUI

struct PreviewList: View {
    var movies: [Movie]
    
    @Binding var currentSelection: Int
    @Binding var isVisible: Bool
    
    @State private var currentTranslation: CGFloat = 0
    
    func shouldPlayVideo(index: Int) -> Bool {
        return isVisible ? (index != currentSelection ? false : true) : false
    }
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            PagerView(pageCount: movies.count,
                      currentIndex: $currentSelection,
                      translation: $currentTranslation) {
                ForEach(0..<movies.count) { movieIndex in
                    let movie = movies[movieIndex]
                    
                    PreviewView(previewVM: PreviewViewModel(movie: movie), playVideo: shouldPlayVideo(index: movieIndex))
                        .frame(width: UIScreen.screenWidth)
                }
            }
            .frame(width: UIScreen.screenWidth)
        }
    }
}

struct ExamplePreview: View {
    @State private var currentSelection: Int = 0
    @State private var isVisible: Bool = true
    
    var body: some View {
        PreviewList(movies: exampleMovies,
                    currentSelection: $currentSelection,
                    isVisible: $isVisible)
    }
}

struct PreviewList_Previews: PreviewProvider {
    static var previews: some View {
        ExamplePreview()
    }
}
