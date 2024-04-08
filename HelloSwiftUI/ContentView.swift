//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack {
            ZStack{
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .position(x: 255, y: 127)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .offset(x: 74, y: 125)
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
