//
//  DownloadView.swift
//  iOS
//
//  Created by Javier Galera Garrido on 01/02/2021.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                HStack() {
                    Image(systemName: "info.circle")
                    Text("Smart Download")
                    Text("ON")
                        .foregroundColor(.blue)
                    
                    Spacer()
                }
                .font(.system(size: 20))
                .padding()

                ZStack() {
                    Circle()
                        .foregroundColor(Color.customDarkGray)
                        .padding(.horizontal, 130)
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70)
                        .foregroundColor(.customGray)
                }
                .frame(height: 225)
                .padding(.top, 75)
                
                VStack(spacing: 20) {
                    Text("Never be without Netflix")
                        .font(.title2)
                        .bold()
                    Text("Download shows and movies so you´ll never be without something to watch --\n even when you´re offline")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                    Button(action: {
                        //
                    }, label: {
                        Text("See What You can Download")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                    })
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            DownloadView()
        }
    }
}
