//
//  CustomTabSwitch.swift
//  iOS
//
//  Created by Javier Galera Garrido on 14/01/2021.
//

import SwiftUI

struct CustomTabSwitch: View {
    
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab] = [.episodes, .trailers, .more]
    var movie: Movie
    
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(getSelectorForegroundColor(tab: tab))
                        
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(getFontColor(tab: tab))
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            
            switch currentTab {
            case .episodes:
                Text("EPISODES")
            case .trailers:
                Text("TRAILERS")
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
        .foregroundColor(.white)
    }
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    func getSelectorForegroundColor(tab: CustomTab) -> Color {
        return currentTab == tab ? .red : .clear
    }
    
    func getFontColor(tab: CustomTab) -> Color {
        return currentTab == tab ? .white : .gray
    }
}

enum CustomTab: String, Hashable {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitch_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            CustomTabSwitch(movie: exampleMovie1)
            
        }
    }
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
