//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            Text("Default padding of 16 points")
                .padding()
                .background(Color.yellow)
            Text("Default padding of 45 points")
                .padding(45)
                .background(Color.yellow)
            Text("Default padding of 3 points")
                .padding(3)
                .background(Color.yellow)
            Text("Top padding only")
                .padding(.top)
                .background(Color.yellow)
            Text("Trailing padding only")
                .padding(.trailing)
                .background(Color.yellow)
            Text("Bottom padding only")
                .padding(.bottom)
                .background(Color.yellow)
            Text("Leading padding only")
                .padding(.leading, 45)
                .background(Color.yellow)
            Text("Top, Leading padding")
                .padding([.top, .leading], 45)
                .background(Color.yellow)
            Text("Top, Leading and Bottom")
                .padding([.top, .leading, .bottom], 45)
                .background(Color.yellow)
        }
    }
}


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
