//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var colorMe = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(colorMe ? .green : .gray)
                .frame(width: 250, height: 100)
            Button("Click here") {
                colorMe.toggle()
            }
            Button {
                colorMe.toggle()
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundStyle(Color.green)
                    .padding()
                    .border(.red, width: 6)
            }
        }
    }
}

#Preview {
    ContentView()
}
