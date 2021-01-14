//
//  CustomTabSwitcher.swift
//  iOS
//
//  Created by Javier Galera Garrido on 14/01/2021.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTab] = [.episodes, .trailers, .more]
    
    var body: some View {
        Text("Hello")
        
//        VStack {
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(tabs, id:\.self) { tab in
                     //   VStack {
//                            Rectangle()
//                                .frame(width: 100,height: 6)
//                            Text(tab.rawValue)
//                                .font(.system(size: 16, weight: .bold))
//                            Button(action: {
//                                //
//                            }, label: {
//                                Text(tab.rawValue)
//                                    .font(.system(size: 16, weight: .bold))
//                            })
//                            .buttonStyle(PlainButtonStyle())
                       // }
//                    }
//                }
//            }
//
//            Text("SELECTED VIEW")
//        }
        foregroundColor(.white)
    }
}

//enum CustomTab: String, Hashable {
//    case episodes = "EPISODES"
//    case trailers = "TRAILERS & MORE"
//    case more = "MORE LIKE THIS"
//}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher()
        }
    }
}
