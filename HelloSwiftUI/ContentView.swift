//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This Text view pushes the GeometryReader down")
            HStack {
                Text("Pushes to the right")
                GeometryReader { geomety in
                    VStack {
                        Text("Width = \(geomety.size.width)")
                        Divider()
                        Text("Local X origin = \(geomety.frame(in: .local).origin.x)")
                        Text("Local Y origin = \(geomety.frame(in: .local).origin.y)")
                        Divider()
                        Text("Global X origin - \(geomety.frame(in: .global).origin.x)")
                        Text("Global Y origin - \(geomety.frame(in: .global).origin.y)")
                    }
                }
                .background(Color.mint)
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
