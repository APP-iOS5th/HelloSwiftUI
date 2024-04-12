//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI


struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                Text("Width =\(geometry.size.width)")
                Text("Height =\(geometry.size.height)")
            }
        }
        .background(Color.green)
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
