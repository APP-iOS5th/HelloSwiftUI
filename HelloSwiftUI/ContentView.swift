//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("width = \(geometry.size.width)")
                Text("height = \(geometry.size.height)")
            }
            
        }.background(Color.gray)
            .ignoresSafeArea()
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
