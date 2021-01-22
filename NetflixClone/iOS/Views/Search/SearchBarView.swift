//
//  SearchBarView.swift
//  iOS
//
//  Created by Javier Galera Garrido on 22/01/2021.
//

import SwiftUI

struct SearchBarView: View {
    @State private var text: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.customDarkGray
                .frame(width:310, height: 36)
                .cornerRadius(8.0)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.customGray)
                    .padding(.leading, 10)
                
                TextField("Search", text: $text)
                    .background(Color.customDarkGray)
                    .cornerRadius(8.0)
                    .foregroundColor(.white)
                    .padding(7)
                    .padding(.leading, -7)
                
                Button(action: {
                    //
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.customGray)
                        .frame(width:35, height: 35)
                })
                .padding(.trailing, 18)
                
                Button(action: {
                    //
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
                .padding(.trailing, 10)
                
                
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            SearchBarView()
                .padding()
        }
    }
}
