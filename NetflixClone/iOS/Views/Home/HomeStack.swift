//
//  HomeStack.swift
//  iOS
//
//  Created by Javier Galera Garrido on 20/01/2021.
//

import SwiftUI

struct HomeStack: View {
    var homeVM: HomeViewModel
    
    var topRowSelection: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(homeVM.allCategories, id: \.self) { category in
            VStack {
                HStack{
                    Text(category )
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                .padding(.leading, 6)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack{
                        ForEach(homeVM.getMovie(forCat: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 125, height: 200)
                                .padding(.horizontal, 5)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
            .padding(.leading, 6)
        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView {
                HomeStack(homeVM: HomeViewModel(), topRowSelection: .home, selectedGenre: .allGenres, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
        }
    }
}
