//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .trailing, spacing: 24) {
            Text("Default paddding of 16 points")
                .padding()
                .background(Color.yellow)
            Text("Default paddding of 45 points")
                .padding(45)
                .background(Color.yellow)
            Text("Default paddding of 3 points")
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
                .padding([.top,.leading], 45)
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
