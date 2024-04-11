//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 1
    var body: some View {
        VStack {
            HStack {
                Button("1")  {
                    selectedView = 1
                }
                Button("2")  {
                    selectedView = 2
                }
                Button("3")  {
                    selectedView = 3
                }
                Button("4")  {
                    selectedView = 4
                }
                Button("5")  {
                    selectedView = 5
                }
                Button("6")  {
                    selectedView = 6
                }
            }
            
        }.tint(.purple)
        TabView (selection: $selectedView){
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
            Text("five")
                .tabItem {
                    Image(systemName: "internaldrive.fill")
                    Text("Five")
                }.tag(5)
            Text("Six")
                .tabItem {
                    Image(systemName: "cloud.drizzle.fill")
                    Text("Six")
                }.tag(6)
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .tint(.purple)
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
