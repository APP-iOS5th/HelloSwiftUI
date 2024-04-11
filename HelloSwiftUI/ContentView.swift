//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 1

    var body: some View {
        VStack {
            HStack {
                ForEach(1..<5) { index in
                    Button("\(index)") {
                        selectedView = index
                    }
                }
            }
            TabView (selection: $selectedView) {
                Text("One")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("One")
                    }.tag(1)
                
                Text("Two")
                    .tabItem {
                        Image(systemName: "hare.fill")
                        Text("Two")
                    }.tag(2)
                
                Text("Three")
                    .tabItem {
                        Image(systemName: "tortoise.fill")
                        Text("Three")
                    }.tag(3)
                
                
                Text("Four")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("Four")
                    }.tag(4)
            }
            .tabViewStyle(.page)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        .tint(.teal)
    }
}

#Preview {
    ContentView()
}
