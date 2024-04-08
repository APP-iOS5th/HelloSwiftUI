//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack (alignment: .trailing, spacing: 30) {
            Text("Default padding of 16 points")
                .padding()
                .background(Color.blue)
            Text("Default padding of 45 points")
                .padding(45)
                .background(Color.blue)
            Text("Default padding of 3 points")
                .padding(3)
                .background(Color.blue)
            Text("Top padding only")
                .padding(.top)
                .background(Color.blue)
            Spacer(minLength: 100)
            Text("Trailing padding only")
                .padding(.trailing)
                .background(Color.blue)
            Text("Bottom padding only")
                .padding(.bottom)
                .background(Color.blue)
            Text("Leading padding only")
                .padding(.leading, 40)
                .background(Color.blue)
            Text("Top and Leading padding")
                .padding([.top, .leading], 40)
                .background(Color.blue)
            Text("Top, Leading, Bottom padding")
                .padding([.top, .leading, .bottom], 45)
                .background(Color.blue)
            
        }
    }
}

#Preview {
    ContentView()
}
/*
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        contentView()
    }
 }
 */
