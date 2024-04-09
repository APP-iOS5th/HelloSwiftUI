//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    var myArray = ["Cat", "Dog", "Turtle", "Ferret", "Parrot", "Goldfish", "Lizard", "Canary", "Tarantula", "Hamster"]
    
    var body: some View {
        VStack {
            List {
                Text("Cat")
                Text("Dog")
                Text("Bird")
                Text("Reptile")
                Text("Fish")
            }
            
            List {
                ForEach(1...25, id: \.self) { index in
                    Text("animal #\(index)")
                }
            }
            
            List {
                ForEach(0..<myArray.count, id: \.self) { index in
                    Text(myArray[index])
                    
                }
                
            }
            
        }
    }
    
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
