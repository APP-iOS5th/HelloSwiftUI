//
//  TabView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct TabTestView: View {
    @State var selectedView = 1
    
    var body: some View {
        VStack {
            HStack {
                Button("1") {
                    selectedView = 1
                }
                Button("2") {
                    selectedView = 2
                }
                Button("3") {
                    selectedView = 3
                }
                Button("4") {
                    selectedView = 4
                }
            }
            
            TabView(selection: $selectedView) {
                Text("One")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("One")
                    }
                    .tag(1)
                
                
                Text("Two")
                    .tabItem {
                        Image(systemName: "hare.fill")
                        Text("Two")
                    }
                    .tag(2)
                
                Text("Three")
                    .tabItem {
                        Image(systemName: "tortoise.fill")
                        Text("Three")
                    }
                    .tag(3)
                
                Text("Four")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("Four")
                    }
                    .tag(4)
                
                Text("Five")
                    .tabItem {
                        Image(systemName: "internaldrive.fill")
                        Text("Five")
                    }
                
                Text("Six")
                    .tabItem {
                        Image(systemName: "cloud.drizzle.fill")
                        Text("Six")
                    }
            }
            .tabViewStyle(.page)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
        .tint(.green)
        
        
        
    }
}

#Preview {
    TabTestView()
}
