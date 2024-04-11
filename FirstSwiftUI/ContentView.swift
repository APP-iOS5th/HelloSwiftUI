//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var selectedView = 1

    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    selectedView = 1
                }) {
                    Text("Button 1")
                }
                Button(action: {
                    selectedView = 2
                }) {
                    Text("Button 2")
                }
                Button(action: {
                    selectedView = 3
                }) {
                    Text("Button 3")
                }
                Button(action: {
                    selectedView = 4
                }) {
                    Text("Button 4")
                }
                Button(action: {
                    selectedView = 5
                }) {
                    Text("Button 5")
                }
                Button(action: {
                    selectedView = 6
                }) {
                    Text("Button 6")
                }
            }
            TabView(selection: $selectedView) {
                Text("1")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("One")
                    }.tag(1)
                Text("2")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Two")
                    }.tag(2)
                Text("3")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Three")
                    }.tag(3)
                Text("4")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Four")
                    }.tag(4)
                Text("5")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Five")
                    }.tag(5)
                Text("6")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Six")
                    }.tag(6)
            }
            .accentColor(.purple)
        }
    }
}
//#Preview {
//    ContentView()
//}

