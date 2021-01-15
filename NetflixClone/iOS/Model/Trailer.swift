//
//  Trailer.swift
//  NetflixClone
//
//  Created by Javier Galera Garrido on 15/01/2021.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
