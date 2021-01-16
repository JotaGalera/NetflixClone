//
//  EpisodesView.swift
//  iOS
//
//  Created by Javier Galera Garrido on 16/01/2021.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonsPicker: Bool
    @Binding var selectedSeason: Int
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    showSeasonsPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
            }
            ForEach(getEpisodes(forSeason: selectedSeason)){ episode in
                Text("Test")
                
            }
            
            Spacer()
        }
        .foregroundColor(.white)
    }
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season})
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            EpisodesView(episodes: exampleEpisodes, showSeasonsPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
