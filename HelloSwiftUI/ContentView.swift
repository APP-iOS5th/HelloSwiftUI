//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//


import SwiftUI


struct FileView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is a separate structure")
                Text("that's stored in the same file")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView()) {
                Text("Send a message")
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
