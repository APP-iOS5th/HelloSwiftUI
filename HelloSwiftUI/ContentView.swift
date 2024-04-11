//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//



import SwiftUI

struct ContentView: View {
    @State var myDegree: Double = 0.0
    @State var flag = false
    
    var body: some View {
        VStack{
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegree : 0))
                .animation(.default, value: flag)
            
            Button("Animate now") {
                flag.toggle()
            }
            Slider(value: $myDegree, in: -180...180, step:1)
                .padding()
                        
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
