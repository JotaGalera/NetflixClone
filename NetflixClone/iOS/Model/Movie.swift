//
//  Movie.swift
//  NetflixClone
//
//  Created by Galera, Javier on 08/01/2021.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    // MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeason: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creator: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotionalHeadling: String?
    
    var trailers: [Trailer]
    
    var numberOfSeasonDisplay: String {
        guard let num = numberOfSeason else { return "" }
        return num == 1 ? "1 season" : "\(num) seasons"
    }
    
    var episodeInfoDisplay: String {
        guard let current = currentEpisode else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episodeName)"
        }
        return "S\(current.season):E\(current.episodeName)"
    }
    
    var episodeDescriptionDisplay: String {
        guard let current = currentEpisode else {
            return defaultEpisodeInfo.description
        }
        return current.description
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
