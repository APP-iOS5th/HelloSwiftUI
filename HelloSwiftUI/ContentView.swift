//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var flag = true
    @State var naviFlag = true
    @State var message = ""
    
    var body: some View {
        NavigationStack {
            Text(message)
            
            Toggle(isOn: $flag, label: {
                Text("토글 디스플레이 모드")
            })
            .padding()
            .navigationTitle("네비게이션 타이틀")
            .navigationBarHidden(naviFlag)
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
                    .foregroundStyle(.green)
                }
                
            }
            
            Toggle(isOn: $naviFlag, label: {
                Text("naviFlag")
            })
            .padding()
        }
        .accentColor(.purple)
    }
    
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
