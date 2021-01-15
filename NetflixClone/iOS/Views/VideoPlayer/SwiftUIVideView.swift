//
//  SwiftUIVideView.swift
//  NetflixClone
//
//  Created by Javier Galera Garrido on 15/01/2021.
//

import SwiftUI
import AVKit

struct SwiftUIVideView: View {
    var url: URL
    
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideView(url: exampleVideoURL)
    }
}
