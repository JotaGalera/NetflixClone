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
    
    var body: some View {
        Group {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        NotificationBarView(showNotificationList: $showNotificationList)
                        
                        Text("For each loop")
                    }
                }
                .foregroundColor(.white)
            }
            
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

struct ComingSoonView_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonView()
    }
}
