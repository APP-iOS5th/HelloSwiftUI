//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack (alignment: .trailing, spacing: 14) {
            
            Text("Default padding of 16 points")
                .padding()
                .background(.yellow)
            
            Text("Default padding of 45 points")
                .padding(45)
                .background(.yellow)
            
            Text("Default padding of 3 points")
                .padding(3)
                .background(.yellow)
            
            HStack (alignment: .bottom) {
                
                Text("Top padding only")
                    .padding(.top)
                    .background(.yellow)
                
                Text("trailing padding only")
                    .padding(.trailing)
                    .background(.yellow)
                
                Text("bottom padding only")
                    .padding(.bottom)
                    .background(.yellow)
            }
            
            
            Text("top, leading padding ")
                .padding([.top, .leading], 45)
                .background(.yellow)
            
            Text("top, leading and bottom padding ")
                .padding([.top, .leading, .bottom], 45)
                .background(.yellow)
                
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
