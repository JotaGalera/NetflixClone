//
//  PreviewVM.swift
//  NetflixClone
//
//  Created by Javier Galera Garrido on 05/02/2021.
//

import Foundation

class PreviewViewModel: ObservableObject {
    var movie : Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
