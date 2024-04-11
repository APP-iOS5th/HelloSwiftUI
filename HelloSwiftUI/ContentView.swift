//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    
    @State var myDegrees: Double = 0.0
    @State var flag = false
    
     var body: some View {
         VStack{
             Text("Hello, world!")
                 .padding()
                 .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
                 .animation(.default, value: flag)
             Button("Animate now"){
                 flag.toggle()
             }
             Slider(value: $myDegrees, in: -100...180, step: 1)
                 .padding()
                 .accentColor(.green)
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

