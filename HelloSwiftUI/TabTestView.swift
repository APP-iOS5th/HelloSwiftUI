//
//  TabView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct TabTestView: View {
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
    TabTestView()
}
