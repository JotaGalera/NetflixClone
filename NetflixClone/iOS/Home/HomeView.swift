//
//  SwiftUIView.swift
//  NetflixClone
//
//  Created by Galera, Javier on 08/01/2021.
//

import SwiftUI

struct HomeView: View {
    var homeVM = HomeViewModel()
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        
                    ForEach(homeVM.allCategories, id: \.self) { category in
                        VStack{
                            HStack{
                                Text(category )
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack{
                                    ForEach(homeVM.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
