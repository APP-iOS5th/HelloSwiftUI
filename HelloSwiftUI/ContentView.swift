//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
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
                .contextMenu {
                    Button("Red", action: {
                        myColor = Color.red
                    })
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
