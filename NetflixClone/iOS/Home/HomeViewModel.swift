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
    
    init() {
        setupMovies()
    }
    
    func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci"] = exampleMovies.shuffled()
    }
}
