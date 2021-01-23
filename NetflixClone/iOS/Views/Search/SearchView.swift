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
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                SearchBarView(text: $searchText, isLoading: $searchVM.isLoading)
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchVM: SearchViewModel())
    }
}
