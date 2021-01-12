//
//  Episode.swift
//  iOS
//
//  Created by Javier Galera Garrido on 12/01/2021.
//

import Foundation

struct Episode: Identifiable {
    var id: UUID

    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
