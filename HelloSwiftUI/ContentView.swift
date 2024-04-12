//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("This text View pushes the GeometryReader down")
            HStack{
                Text("Pushes to the right")
                GeometryReader { geometry in
                    VStack {
                        Text("MinX = \(geometry.frame(in: .local).minX)")
                        Text("MidX = \(geometry.frame(in: .local).midX)")
                        Text("MaxX = \(geometry.frame(in: .local).maxX)")
                        Divider()
                        Text("MinY = \(geometry.frame(in: .local).minY)")
                        Text("MidY = \(geometry.frame(in: .local).midY)")
                        Text("MaxY = \(geometry.frame(in: .local).maxY)")
                    }
                }
                .background(.yellow)
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
