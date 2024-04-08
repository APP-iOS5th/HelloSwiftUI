//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by John Yun on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Default paddding of 16 points")
                .padding()
                .background(Color.red)
            Text("Default paddding of 45 points")
                .padding(45)
                .background(Color.orange)
            Text("Default paddding of 3 points")
                .padding(3)
                .background(Color.yellow)
            Text("Top padding only")
                .padding(.top)
                .background(Color.green)
            Text("Trailing padding only")
                .padding(.trailing)
                .background(Color.mint)
            Text("Bottom padding only")
                .padding(.bottom)
                .background(Color.cyan)
            Text("Leading padding only")
                .padding(.leading, 45)
                .background(Color.blue)
            Text("Top, Leading padding")
                .padding([.top,.leading], 45)
                .background(Color.indigo)
            Text("Top, Leading and Bottom")
                .padding([.top,.leading, .bottom], 45)
                .background(Color.purple)
        }
    }
}

#Preview {
    ContentView()
}
