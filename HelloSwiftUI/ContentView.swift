//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            Text("One")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("One")
                }
            Text("Two")
                .tabItem {
                    Image(systemName: "hare.fill")
                    Text("Two")
                }
            Text("Three")
                .tabItem {
                    Image(systemName: "tortoise.fill")
                    Text("Three")
                }
            Text("Four")
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("Four")
                }
            
            
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
