//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var myColor = Color.gray
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(myColor)
            
            Text("Pick a color")
                .padding()
                .contextMenu { //길게눌러야함
                    Button("Red", action:  {
                        myColor = Color.red
                    })
                    Button("Puple", action: purple)
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
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
