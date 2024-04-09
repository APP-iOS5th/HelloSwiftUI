//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var myArray = ["Cat", "Dog", "Turtle", "Ferret", "Parrot", "Goldfinsh", "Lizard", "Canary", "Tarantula", "Hamster"]
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
                ForEach(1...25, id: \.self) { index in  //id: \.self, key-value
                    Text("Animal # \(index)")
                }
            }
            List {
                ForEach(0...myArray.count - 1, id:\.self) { index in
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
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
