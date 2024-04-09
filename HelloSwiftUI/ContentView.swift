//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI



import SwiftUI

extension Color {
    
}

struct ContentView: View {
    @State var changeMe = false
    @State var changeMe2 = false
    @State var changeMe3 = false
    @State var message = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundColor(changeMe ? .red : .yellow)
                .onTapGesture {
                    changeMe.toggle()
                }
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundColor(changeMe2 ? .red : .gray)
                .onTapGesture {
                    changeMe2.toggle()
                }
            Text(message).padding()

            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundColor(changeMe3 ? .red : .blue)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2,  pressing: {stillPressed in message = "Long press in progress: \(stillPressed)"}){
                    changeMe3.toggle()
                }
                                    
                                    
                                    }
                                    }
                                    
                                    
                                    
                                    }
                                    
                                    #Preview
                                    {
                    ContentView()
                }
