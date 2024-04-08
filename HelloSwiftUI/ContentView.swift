//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 24) {
            Text("Default padding of 16 points")
                .padding()
                .background(.yellow)
          
            Text("Default padding of 45 points")
                .padding(45)
                .background(.yellow)
            
            Text("Default padding of 3 points")
                .padding(3)
                .background(.yellow)
            
            Text("Top padding only")
                .padding(.top)
                .background(.yellow)
            
            Text("Trailing padding only")
                .padding(.trailing)
                .background(.yellow)
            
            Text("Bottom padding only")
                .padding(.bottom)
                .background(.yellow)
            
            Text("Leading padding only")
                .padding(.leading, 45)
                .background(.yellow)
            
            Text("Top, Leading padding ")
                .padding([.top, .leading], 45)
                .background(.yellow)
            
            Text("Top, Leading and Botto")
                .padding([.top, .leading, .bottom], 45)
                .background(.yellow)
            
        }
       
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
