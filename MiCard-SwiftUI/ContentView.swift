//
//  ContentView.swift
//  MiCard
//
//  Created by Mark Arias on 9/12/23.
//
// Notes:
// Stuff to improve and do
// make note of website Angela mentioned where she got the background color
// add in the custom font asset here

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "moon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Test User")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                Text("does stuff")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "###-333-####", imageName: "phone.fill")
                
                InfoView(text: "user@gmail.com", imageName: "envelope.fill")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

