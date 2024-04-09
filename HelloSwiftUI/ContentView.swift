//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var changeMe = false
    @State var changeMe2 = false
    @State var changeMe3 = false
    
    @State var message = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe ? .red : .yellow)
                .onTapGesture {
                    changeMe.toggle()
                }
            
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe2 ? .red : .yellow)
                .onTapGesture(count: 2) {
                    changeMe2.toggle()
                }
            
            Text(message)
                .padding()
            
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe3 ? .red : .yellow)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: { stillPressed in
                    message = "Long Press in progress :\(stillPressed)"
                }) {
                    changeMe3.toggle()
                }
            
        }
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
