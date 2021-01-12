//
//  SmallVerticalButton.swift
//  iOS
//
//  Created by Galera, Javier on 08/01/2021.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    
    var isOn: Bool
    
    var imageName: String {
        isOn ? isOnImage : isOffImage
    }
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                    .padding(.bottom, 1)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            SmallVerticalButton(text: "My List",
                                isOnImage: "checkmark",
                                isOffImage: "plus",
                                isOn: false){
                print ("Tapped")
            }
        }
    }
}
