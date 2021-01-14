//
//  MovieDetails.swift
//  iOS
//
//  Created by Javier Galera Garrido on 12/01/2021.
//

import SwiftUI

struct MovieDetails: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        //
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 20))
                    })
                }.padding(.horizontal, 22)
                
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                    VStack {
                        
                        StandardHomeMovie(movie: movie)
                            .frame(width: UIScreen.screenWidth/2)
                        
                        MovieInfoSubheadline(movie: movie)
                        
                        if movie.promotionalHeadling != nil {
                            Text(movie.promotionalHeadling!)
                                .font(.headline)
                                .bold()
                        }
                        
                        PlayButton(text: "Play", imageName: "", backgroundColor: .red) {
                            //
                        }
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                                //
                            }
                            
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true){
                                //
                            }
                            
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true){
                                //
                            }
                            
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                    }
                    .padding(.horizontal, 10)
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: exampleMovie2)
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonDisplay)
            
            HDLogoView()
            
        }
        
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct HDLogoView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("darkGray"))
                .border(Color.gray, width: 2.0)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            Text("HD")
                .foregroundColor(.white)
                .font(.system(size: 14))
                .bold()
        }.frame(width: 30, height: 20)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4.0)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
            }
        }
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text ("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                Text ("Creators: \(movie.creator)")
                
                Spacer()
            }
            
        }
        .font(.caption)
        .foregroundColor(Color("lightGray"))
        .padding(.vertical, 10)
    }
}
