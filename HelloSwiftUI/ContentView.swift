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
                        Text("minX - \(geomety.frame(in: .local).minX)")
                        Text("midX - \(geomety.frame(in: .local).midX)")
                        Text("maxX - \(geomety.frame(in: .local).maxX)")
                        Divider()
                        Text("minY - \(geomety.frame(in: .local).minY)")
                        Text("midY - \(geomety.frame(in: .local).midY)")
                        Text("maxY - \(geomety.frame(in: .local).maxY)")
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
