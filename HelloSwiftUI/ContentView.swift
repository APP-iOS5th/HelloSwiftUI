//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            Text("This Text view pushes the GeometryReader down")
            HStack{
                Text("Text push to the right") //내가 점유하고있는 크기의 값이 전달됨. 
                
                GeometryReader{ geometry in
                    VStack {
                        
                        Text("Local X origin  =\(geometry.frame(in: .local).origin.x)")
                        Text("Local X origin  =\(geometry.frame(in: .local).origin.y)")
                        Divider()
                        Text("Local X origin  =\(geometry.frame(in: .global).origin.x)")
                        Text("Local X origin  =\(geometry.frame(in: .global).origin.x)")
                        
                    }
                }
                .background(Color.green)
                .ignoresSafeArea()
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
