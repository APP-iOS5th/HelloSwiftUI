//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
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
                .foregroundStyle(changeMe1 ? .red : .yellow)
                .onTapGesture {
                    changeMe1.toggle()
                }
            
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe2 ? .red : .yellow)
                //두번연속 클릭할떄 변경
                .onTapGesture(count: 2) {
                    changeMe2.toggle()
                }
            
            Text(message).padding()
            
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe3 ? .red : .yellow)
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

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
