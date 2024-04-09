//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI


struct ContentView: View {
    @State var changeMe1 = false
    @State var changeMe2 = false
    @State var changeMe3 = false
    @State var message = ""


    
    var body: some View{
        VStack{
            Circle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe1 ? .red : .yellow)
            //count:2 (2 click to change)
                .onTapGesture(count: 2) {
                    changeMe1.toggle()
                }
            
            Circle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe2 ? .red : .yellow)
                .onTapGesture(count: 2) {
                    changeMe2.toggle()
                }
            
            Text(message).padding()
            
            Circle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe3 ? .red : .yellow)
                .onLongPressGesture(minimumDuration: 2, maximumDistance:2 , pressing: { stillPressed in message = "Long press in progress: \(stillPressed)"
                }){
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
