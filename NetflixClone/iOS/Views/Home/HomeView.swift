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
                    
                    TopRowButtons()
                        .zIndex(0)
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                        
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

struct TopRowButtons: View {
    var body: some View {
        HStack {
            
            Button(action: {
                //
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("TV Shows")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("My list")
            })
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
