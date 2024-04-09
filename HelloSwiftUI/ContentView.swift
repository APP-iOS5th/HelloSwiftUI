//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//



import SwiftUI

struct ContentView: View {
    var myArray = ["Cat", "Dog", "Turtle", "Rabbit", "Tiger", "Hamster", "Otter", "bird", "Bear"]
    var body: some View {
        VStack {
            List{
                Text("Cat")
                Text("Rabbit")
                Text("Dog")
                Text("Hamster")
                Text("Tiger")
            }
            List {
                ForEach(1...25, id: \.self) {
                    index in Text("Animal #\(index)")
                }
            }
            List {
                ForEach(0...myArray.count - 1, id: \.self) {
                    index in Text(myArray[index])
                }
            }
 
        }
    }
}

#Preview {
    ContentView()
}
