//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: true) {
            ForEach(0..<50) {
                Text("Item # \($0)")
            }
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
