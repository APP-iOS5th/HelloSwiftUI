//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State var changeMe1 = false
    @State var changeMe2 = false
    @State var changeMe3 = false
    @State var message = ""
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe1 ? .red: .yellow)
                .onTapGesture {
                    changeMe1.toggle()
                }

            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe2 ? .red: .yellow)
                .onTapGesture(count: 2) {
                    changeMe2.toggle()
                }

            Text(message).padding()
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe3 ? .red: .yellow)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: { stillPressed in
                        message = "Long press in progress: \(stillPressed)"
                }) {
                    changeMe3.toggle()
                }
        }
    }
}

#Preview {
    ContentView()
}
