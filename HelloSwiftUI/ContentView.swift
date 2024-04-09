//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?


struct ContentView: View {
    var myArray = ["Cat", "Dog", "Turtle", "Ferret", "Parrot", "Goldfish", "Lizard", "Canary", "Tarantula", "Hamster"]
    var body: some View {
        VStack  {
            List {
                Text("Cat")
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

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

