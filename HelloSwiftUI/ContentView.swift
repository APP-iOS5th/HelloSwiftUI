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
                ForEach(1...25, id: \.self) { index in  //id: \.self: .self는 키 경로(key path)를 나타내는 특수한 문법으로, 컬렉션의 각 요소 자체를 의미합니다. 즉, .self를 사용하면 컬렉션의 요소가 고유한 식별자 역할을 하게 됩니다.
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
