//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    @State var flag = true
    @State var message = ""
    
    var body: some View {
        NavigationStack {
            Text(message)
            Toggle(isOn: $flag, label: {
                Text("토글 디스플레이 모드")
            })
            .navigationTitle("네비게이션 타이틀")
//            .navigationBarHidden(false)
//            .navigationBarHidden(flag)
            .navigationBarTitleDisplayMode(flag ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud 아이콘 탭됨"
                    } label: {
                        Image(systemName: "icloud")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        message = "완료 버튼 탭됨"
                    } label: {
                        Text("완료")
                    }
                }
            }
        }
        .accentColor(.purple)
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
