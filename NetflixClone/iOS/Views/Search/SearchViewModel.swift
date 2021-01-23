//
//  SearchViewModel.swift
//  iOS
//
//  Created by Javier Galera Garrido on 23/01/2021.
//

import Foundation
import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var viewState: ViewState = ViewState.ready
    @Published var popularMovies: [Movie] = []
    @Published var searchResults: [Movie] = []
    @Published var isShowingPopularMovies = true
    
    func updateSearchText(with text: String) {
        setViewState(to: .loading)
        
        if text.count > 0 {
            isShowingPopularMovies = false
            getSearchResults(forText: text)
        } else {
            isShowingPopularMovies = true
        }
    }
    
    private func setViewState(to state: ViewState) {
        DispatchQueue.main.async {
            self.viewState = state
            self.isLoading = state == .loading
        }
    }
    
    private func getPopularMovies() {
        self.popularMovies = generateMovies(40)
    }
    
    private func getSearchResults(forText text: String) {
        
        let haveResult = Int.random(in: 0...3)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            if haveResult == 0 {
                self.searchResults = []
                self.setViewState(to: .empty)
            } else {
                let movies = generateMovies(21)
                self.searchResults = movies
                self.setViewState(to: .ready)
            }
        }
    }
}

enum ViewState {
    case empty
    case loading
    case ready
    case error
}
