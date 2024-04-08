//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    let myString = "Displays a string variable"
    
    var body: some View {
        VStack {
            Image(systemName: "clock.circle")
            Label("Txt", systemImage: "person.fill")
            Image("bowl-food-solid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            Label {
                Text("This is rice")
            } icon: {
                Image("bowl-food-solid")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

