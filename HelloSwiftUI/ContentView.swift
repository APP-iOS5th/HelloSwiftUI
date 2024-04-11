//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
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
                    Image(systemName: "folder.fill")
                    Text("Three")
                }
            Text("Four")
                .tabItem {
                    Image(systemName: "tortoise.fill")
                    Text("Four")
                }
            Text("Five")
                .tabItem {
                    Image(systemName: "internaldrive.fill")
                    Text("Five")
                }
            Text("Six")
                .tabItem {
                    Image(systemName: "car.rear.fill")
                    Text("Six")
                }
        }
        .tint(.orange)
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
