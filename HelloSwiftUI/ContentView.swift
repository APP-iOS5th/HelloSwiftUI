//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        NavigationStack {
            Text(message)
            Toggle(isOn: $flag, label: {
                Text("토글 디스플레이 모드")
            })
            .navigationTitle("네비게이션 타이틀")
            .navigationBarHidden(flag)
            .navigationBarTitleDisplayMode(flag ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud 아이콘 탭 됨"
                    } label: {
                        Image(systemName: "icloud")
                    }
                }
            }
            .accentColor(.pink)
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
