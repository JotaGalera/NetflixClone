//
//  SearchView.swift
//  iOS
//
//  Created by Javier Galera Garrido on 23/01/2021.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var searchVM: SearchViewModel = SearchViewModel()
    
    @State private var searchText = ""
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set: {
            searchText = $0
            searchVM.updateSearchText(with: searchText)
        }
        
        return ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                SearchBarView(text: searchTextBinding,
                              isLoading: $searchVM.isLoading)
                    .padding()
                
                ScrollView {
                    if searchVM.isShowingPopularMovies {
                        PopularList(movies: searchVM.popularMovies,
                                    movieDetailToShow: $movieDetailToShow)
                    }
                    
                    if searchVM.viewState == .empty {
                        Text("Your Search did not have any result")
                            .bold()
                            .padding(.top, 150)
                    } else if searchVM.viewState == .ready && !searchVM.isShowingPopularMovies {
                        Text("Ready")
                    }
                }
                
                Spacer()
            }
            
            if movieDetailToShow != nil {
                MovieDetails(movieDetailToShow: $movieDetailToShow, movie: movieDetailToShow!)
            }
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchVM: SearchViewModel())
    }
}

struct PopularList: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular Searches")
                    .bold()
                    .font(.title3)
                    .padding(.leading, 12)
                Spacer()
                
            }
            
            LazyVStack {
                ForEach(movies, id: \.id) { movie in
                    PopularMovieView(movie: movie,
                                     movieDetailToShow: $movieDetailToShow)
                        .frame(height: 75)
                }
            }
        }
    }
}
