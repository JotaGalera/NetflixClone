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
        VStack(spacing: 14) {
            HStack {
                Button(action: {
                    showSeasonsPicker = true
                }, label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
            }
            ForEach(getEpisodes(forSeason: selectedSeason)){ episode in
                VStack(alignment: .leading) {
                    HStack{
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)min")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                    }
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
                .padding(.bottom, 20)
                
            }
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
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
