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
                Text("this Tn!")
                GeometryReader { geometry in
                    VStack {
                        Text("minX = \(geometry.frame(in: .local).minX)")
                        Text("midX = \(geometry.frame(in: .local).midX)")
                        Text("maxX = \(geometry.frame(in: .local).maxX)")
                        Divider()
                        Text("minY = \(geometry.frame(in: .local).minY)")
                        Text("minY = \(geometry.frame(in: .local).midY)")
                        Text("minY = \(geometry.frame(in: .local).maxY)")

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
