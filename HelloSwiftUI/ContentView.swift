//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Label("Text", systemImage: "clock.circle").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Label {
                Text("No modifiers")
            } icon: {
                Image("clock-solid")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
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
 static var previews: som View {
 ContentView()
 }
 }
 */
  
