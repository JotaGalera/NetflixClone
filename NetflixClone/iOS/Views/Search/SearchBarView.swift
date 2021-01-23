//
//  SearchBarView.swift
//  iOS
//
//  Created by Javier Galera Garrido on 22/01/2021.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    
    @State private var isEditing: Bool = true
    
    @Binding var isLoading: Bool
    
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
                    .padding(7)
                    .padding(.leading, -7)
                    .padding(.horizontal, 10)
                    .background(Color.customDarkGray)
                    .cornerRadius(8.0)
                    .foregroundColor(.white)
                    .onTapGesture {
                        isEditing = true
                    }
                
                if !text.isEmpty {
                    if isLoading {
                        Button(action: {
                            text = ""
                        }, label: {
                            ActivityIndicator(style: .medium, animate: .constant(true))
                                .configure {
                                    $0.color = .white
                                }
                        })
                        .frame(width:35, height: 35)
                        .padding(.trailing, 22)
                        
                    } else {
                        Button(action: {
                            text = ""
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.customGray)
                                .frame(width:35, height: 35)
                        })
                        .padding(.trailing, 18)
                    }
                }
                
                if isEditing {
                    Button(action: {
                        text = ""
                        isEditing = false
                        hideKeyboard()
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.white)
                    })
                    .padding(.trailing, 10)
                }
                
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            SearchBarView(text: .constant(""), isLoading: .constant(false))
                .padding()
        }
    }
}
