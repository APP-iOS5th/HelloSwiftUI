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

    
    var body: some View {
        TabView {
            Text("1")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("One")
                }
            Text("2")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Two")
                }
            Text("3")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Three")
                }
            Text("4")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Four")
                }
            Text("5")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Five")
                }
            Text("6")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Six")
                }
        }
    }
}
//#Preview {
//    ContentView()
//}

