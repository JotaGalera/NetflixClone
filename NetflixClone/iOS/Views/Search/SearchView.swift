//
//  SearchView.swift
//  iOS
//
//  Created by Javier Galera Garrido on 23/01/2021.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var searchVM: SearchViewModel = SearchViewModel()
    
    @State private var searchText = ""
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set: {
            searchText = $0
            searchVM.updateSearchText(with: searchText)
        }
        
        return ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                SearchBarView(text: searchTextBinding, isLoading: $searchVM.isLoading)
                    .padding()
                
                ScrollView {
                    if searchVM.isShowingPopularMovies {
                        Text("Popular Movies")
                    }
                    
                    if searchVM.viewState == .empty {
                        Text("Empty")
                    } else if searchVM.viewState == .ready && !searchVM.isShowingPopularMovies {
                        Text("Ready")
                    }
                }
                
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchVM: SearchViewModel())
    }
}
