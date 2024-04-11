//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
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
                Button("5") {
                    selectedView = 5
                }
                Button("6") {
                    selectedView = 6
                }
                Button("7") {
                    selectedView = 7
                }
            }
            TabView (selection: $selectedView) {
                Text("첫탭")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("이것은")
                    }.tag(1)
                Text("Two")
                    .tabItem {
                        Image(systemName: "hare.fill")
                        Text("아래에")
                    }.tag(2)
                Text("Three")
                    .tabItem {
                        Image(systemName: "tortoise.fill")
                        Text("나오는")
                    }.tag(3)
                
                Text("Four")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("탭아이템")
                    }.tag(4)
                Text("파잎")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("오")
                    }.tag(5)
                Text("식스")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("육")
                    }.tag(6)
                Text("세븐")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("칠")
                    }.tag(7)}.tabViewStyle(.page).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))//아래 탭바 디자인 바꾸기.
//탭 개수는 5개 까지로 정해져 있다. 6개부터는 4개만 표시하고 마지막은 more... 탭으로 만들어 넣는다.
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
