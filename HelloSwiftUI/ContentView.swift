//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        // vstack alignment - leading, trailing, center
        VStack (alignment: .leading, spacing: 24) {
            Text("Default padding of 16 points")
                .padding()
                .background(.yellow)
            Text("Default padding of 45 points")
                .padding(45)
                .background(.yellow)
            Text("Default padding of 3 points")
                .padding(3)
                .background(.yellow)
            Spacer()
            // hstack alignment - top, bottom,  center
            HStack (alignment: .bottom, spacing: 24) {
                Text("Top padding only")
                    .padding(.top)
                    .background(Color.teal)
                Text("Trailing padding only")
                    .padding(.trailing)
                    .background(Color.teal)
                Text("Botton padding only")
                    .padding(.bottom)
                    .background(Color.teal)
            }
            Spacer()
            Text("Leading padding of 45 points only")
                .padding(.leading, 45)
                .background(Color.yellow)
            
            Text("Top, Leading paddings")
                .padding([.top, .leading], 45)
                .background(Color.yellow)
            Text("Top, Leading and Bottom")
                .padding([.top,.leading, .bottom], 45)
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
