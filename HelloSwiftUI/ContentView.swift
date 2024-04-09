//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var myColor = Color.gray
    
    var body: some View {
        VStack {
            Text("Turtle Rock")
            
            Rectangle()
                .foregroundColor(myColor)
            
            Text("Pick a color")
                .padding()
                .contextMenu {
                    Button("Red") {
                        myColor = Color.red
                    }
                    
                    Button("Purple", action: purple)
                    Button("Green", action: green)
                    Button("Orange", action: orange)
                    
                    
                }
        }
        
    }
    
    
    func purple() {
        myColor = Color.purple
    }
    func green() {
        myColor = Color.green
    }
    func orange() {
        myColor = Color.orange
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
