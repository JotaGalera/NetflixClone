//
//  SearchResultGrid.swift
//  iOS
//
//  Created by Javier Galera Garrido on 24/01/2021.
//

import SwiftUI

struct SearchResultGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let column: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        LazyVGrid(columns: column, spacing: 10) {
            ForEach(movies, id: \.id) { movie in
                StandardHomeMovie(movie: movie)
                    .frame(height: 180)
                    .onTapGesture {
                        movieDetailToShow = movie
                    }
            }
        }
    }
}

struct SearchResultGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
    }
}
