//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    var myArray = ["Cat", "Dog", "Turtle", "Ferret", "Parrot", "Goldfish", "Lizard", "canary", "Tatantula", "Hamster"]
    
    var body: some View {
        VStack {
            List {
                Text("Car")
                Text("Dog")
                Text("Bird")
                Text("Reptile")
                Text("Fish")
            }
            List {
                ForEach(1...25, id: \.self) { index in
                    Text("Animal #\(index)")
                }
            }
            List {
                ForEach(0...myArray.count-1, id: \.self) { index in
                    Text(myArray[index])
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
