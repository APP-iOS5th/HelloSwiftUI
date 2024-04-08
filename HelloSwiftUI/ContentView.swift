//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5

    var body: some View {
        VStack (alignment: .trailing, spacing: 24) {
            Text("Default padding of 16 points")
                .padding()
                .background(Color.yellow)
            Text("Default padding of 45 points")
                .padding(45)
                .background(Color.yellow)
            Text("Default padding of 3 points")
                .padding(3)
                .background(Color.yellow)
            Spacer()
            HStack (alignment: .bottom){
                Text("Top padding only")
                    .padding(.top)
                    .background(Color.yellow)
                Text("Trailing padding only")
                    .padding(.trailing)
                    .background(Color.yellow)
                Text("Bottom padding only")
                    .padding(.bottom)
                    .background(Color.yellow)
            }
            Spacer(minLength: 100)
            Text("Leading padding only")
                .padding(.leading)
                .background(Color.yellow)
            Spacer()
            Text("Top, Leading padding only")
                .padding([.top, .leading], 45)
                .background(Color.yellow)
            Text("Top, Leading, Bottom padding only")
                .padding([.top, .leading, .bottom], 45)
                .background(Color.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
