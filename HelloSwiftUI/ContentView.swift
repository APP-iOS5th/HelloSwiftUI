//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader{
            geometry in
            VStack{
                Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
                Divider()
                Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
                Text("Global Y origin = \(geometry.frame(in: .global).origin.y)")
                
            }
        }
        .background(Color.yellow)
//        .ignoresSafeArea()
    }
}



#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
