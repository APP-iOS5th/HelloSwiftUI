//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            Label("Text", systemImage: "clock.circle").font(.title)
            Label{
                Text("No Modifiers")
            } icon: {
                Image(systemName: "clock.circle")
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
    static var previews: some View {
        ContentView()
    }
 }
 */
