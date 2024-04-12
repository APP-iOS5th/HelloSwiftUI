//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack{
            Text("This Text view pushes the GeometryReader down")
            HStack{
                Text("Pushes to the right")
                GeometryReader { geometry in
                    VStack {
                        Text("Width = \(geometry.size.width)")
                        Divider()
                        Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                        Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
                        Divider()
                        Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
                        Text("Global Y origin = \(geometry.frame(in: .global).origin.y)")
                        
                    }
                }
                .background(Color.yellow)
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
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
