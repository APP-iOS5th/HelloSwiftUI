//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Label("Text", systemImage: "clock.circle").font(.title)
            Label {
                Text("No modifiers")
            } icon : {
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
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
