//
//  ComingSoonView.swift
//  iOS
//
//  Created by Javier Galera Garrido on 27/01/2021.
//

import SwiftUI

struct ComingSoonView: View {
    @State private var showNotificationList: Bool = false
    @State private var navBarHidden = true
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex = 0
    
    @StateObject var comingSoonVM = ComingSoonViewModel()
    
    var body: some View {
        let movies = comingSoonVM.movies.enumerated().map({ $0 })
        
        let scrollTrackingBinding = Binding {
            return scrollOffset
        } set : { newValue in
            scrollOffset = newValue
            updateActiveIndex(fromScroll: newValue)
        }
        
        Group {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTrackingBinding){
                    LazyVStack {
                            NotificationBarView(showNotificationList: $showNotificationList)
                            
                        ForEach(Array(movies), id: \.offset) { index, movie in
                                ComingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                    .frame(height: 400)
                                    .overlay(
                                        Group {
                                            index == activeIndex ? Color.clear : Color.black.opacity(0.8)
                                        }
                                        .animation(.easeInOut)
                                    )
                            }
                    }
                }
                .foregroundColor(.white)
                
                NavigationLink(
                    destination: Text("NotificationList"),
                    isActive: $showNotificationList,
                    label: {
                        EmptyView()
                    })
                    .navigationTitle("")
                    .navigationBarHidden(navBarHidden)
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification), perform: { _ in
                        self.navBarHidden = true
                    })
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: { _ in
                        self.navBarHidden = false
                    })
            }
        }
    }
    
    func updateActiveIndex(fromScroll scroll: CGFloat) {
        if scroll < 105 {
            activeIndex = 0
        } else {
            let remove105 = scroll - 105
            
            let active = Int(remove105 / 410) + 1
            activeIndex = Int(active)
        }
    }
}

struct ComingSoonView_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonView()
    }
}
