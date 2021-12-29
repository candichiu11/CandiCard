//
//  ContentView.swift
//  CandiCard
//
//  Created by Candi Chiu on 27.12.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 0.15, green: 0.68, blue: 0.38).ignoresSafeArea()
                VStack {
                    
                    Image("candi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 250)
                        .clipShape(Circle())
                        .overlay(
                            Circle().strokeBorder(Color.white, lineWidth: 5)
                        )
                    
                    Text("Candi Chiu")
                        .font(.custom("Poppins-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("iOS developer")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    
                    Divider()
                    
                    InfoView(text: "+49 15259335161", imageName: "phone.fill")
                    InfoView(text: "cchiu615@gmail.com", imageName: "envelope.fill")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}

