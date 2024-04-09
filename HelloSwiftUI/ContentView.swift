//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var message  = false
    @State var initiat = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 175, height:125)
                .foregroundStyle(message ? .red : .yellow)
                .onTapGesture(count:2) {   //두번 터치하면 동작. 일종의 트리거.
                    message.toggle()}
            
            Rectangle()
                .frame(width: 175, height:125)
                .foregroundStyle(message ? .red : .yellow)
                .onTapGesture(count:2) {   //두번 터치하면 동작. 일종의 트리거.
                    message.toggle()}
            
            
            Text(initiat).padding()
            
            Rectangle()
                .frame(width: 175, height:125)
                .foregroundStyle(message ? .red : .yellow)
                .onLongPressGesture (minimumDuration: 2, maximumDistance: 2, pressing: { stillPressed in initiat = "LongPress in progress \(stillPressed))"
                })
            {message.toggle() }
            
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
