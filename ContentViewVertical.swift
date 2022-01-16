//
//  ContentView.swift
//  SwiftUI Tutorial: Working with ScrollView
//
//  Created by Alvin Sosangyo on 01/16/22.
//


import SwiftUI

struct ContentView: View {
    
    var body: some View {
            
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                // Make sure you change the image name to the filename
                // of the photos that you'll be using.
                
                ImageTextView(
                    image: "",
                    title: "Best programming language for beginners",
                    subtitle: "Because you have to take it easy at first"
                )
                
                ImageTextView(
                    image: "",
                    title: "Best monitors for work and play",
                    subtitle: "You can have both worlds"
                )
                
                ImageTextView(
                    image: "",
                    title: "Best place to code",
                    subtitle: "Focus matters a lot"
                )
                
            } //VStack
            
        } //ScrollView
    
    } //body
    
} //ContentView

struct ImageTextView: View {

    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                
                Text(title)
                    .font(.title)
                    .fontWeight(.black)
                
                Text(subtitle)
                    .font(.headline)
                
            }
            .padding(10)
            
        }
        .padding(.bottom, 20)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


