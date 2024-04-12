//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack{
            Text("This Text view push!")
            HStack{
                Text("this Text push again!")
                GeometryReader { geometry in
                    VStack {
                        Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                        Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
                        Divider()
                        Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
                        Text("Global Y origin = \(geometry.frame(in: .global).origin.y)")
                    }
                }
                .background(Color.yellow)

                
            }
        }
    }
}

#Preview {
    ContentView()
}
