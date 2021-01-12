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
    
    //MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeason: Int?
    
    var episodes: [Episode]?
    
    var promotionalHeadling: String?
    
    var numberOfSeasonDisplay: String {
        guard let num = numberOfSeason else { return "" }
        return num == 1 ? "1 season" : "\(num) seasons"
    }
}
