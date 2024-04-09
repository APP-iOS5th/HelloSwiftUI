//
//  ListEx.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct ListEx: View {
    
    var myArray = ["Cat", "Dog", "Turtle", "Ferret", "Parrot", "Goldfish", "Lizard", "Canary", "Tarantula", "Hamster"]
    
    var body: some View {
        List {
            Text("Cat")
            Text("Dog")
            Text("Bird")
            Text("Reptild")
            Text("Fish")
        }
        
        List {
            ForEach(1...25, id: \.self) { index in
                    Text("Animals #\(index)")
            }
        }
        
        List {
            ForEach(0...myArray.count - 1, id: \.self) { index in
                Text(myArray[index])
            }
        }
    }
}

#Preview {
    ListEx()
}
