//
//  HomeViewModel.swift
//  NetflixClone
//
//  Created by Galera, Javier on 08/01/2021.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    var allCategories: [String] {
        movies.keys.map({ String($0)})
    }
    var allGenre: [HomeGenre] = [.allGenres, .action, .comedy, .horror, .thriller]
    
    
    init() {
        setupMovies()
    }
    
    func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre) })
        case .tvShows:
            return (movies[cat] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre)})
        case .myList:
            return movies[cat] ?? []
        }
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci"] = exampleMovies.shuffled()
    }
}
