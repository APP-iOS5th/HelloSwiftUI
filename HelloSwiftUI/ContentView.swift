//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Default paddding of 16 points")
                .padding()
                .background(Color.yellow)
            
            Text("Default paddding of 45 points")
                .padding(45)
                .background(Color.yellow)
            
            Text("Default paddding of 3 points")
                .padding(3)
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
