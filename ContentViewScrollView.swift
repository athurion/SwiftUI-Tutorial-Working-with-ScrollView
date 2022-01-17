//
//  ContentView.swift
//  SwiftUI Tutorial: Working with ScrollView
//
//  Created by Alvin Sosangyo on 01/17/22.
//


import SwiftUI

struct ContentView: View {
    
    var body: some View {
            
        VStack {
            
            // Make sure you change the image name to the filename
            // of the photos that you'll be using.
            
            //1. Reading Now
            Text("Reading Now")
                .font(.headline)
                .fontWeight(.black)
            
            //2. Vertical ScrollView
            ScrollView(showsIndicators: false) {
                
                VStack {
                    
                    ImageTextView(
                        image: "",
                        title: "Best programming language for beginners",
                        subtitle: "Because you have to take it easy at first",
                        size: .infinity
                    )
                    
                    ImageTextView(
                        image: "",
                        title: "Best monitors for work and play",
                        subtitle: "You can have both worlds",
                        size: .infinity
                    )
                    
                    ImageTextView(
                        image: "",
                        title: "Best place to code",
                        subtitle: "Focus matters a lot",
                        size: .infinity
                    )
                    
                } //VStack
                
            } //ScrollView
            
            //3. Horizontal ScrollView
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    ImageTextView(
                        image: "",
                        title: "Best desktop for gaming",
                        subtitle: "From budget to high end",
                        size: 200
                    )
                    
                    ImageTextView(
                        image: "",
                        title: "Best keyboard for programmers",
                        subtitle: "Mechanical or not",
                        size: 200
                    )
                    
                    ImageTextView(
                        image: "",
                        title: "Best computer mouse",
                        subtitle: "For productivity or gaming",
                        size: 200
                    )
                    
                } //HStack
                
            } //ScrollView
            
            //4. Recommended
            Text("Recommended")
                .font(.headline)
                .fontWeight(.black)
            
        } //VStack
    
    } //body
    
} //ContentView

struct ImageTextView: View {

    var image: String
    var title: String
    var subtitle: String
    var size: CGFloat
    
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
        .frame(width: size, height: size)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


