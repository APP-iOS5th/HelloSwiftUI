//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct FileView: View {
    var choice: String
    
    var body: some View {
        VStack {
            Text("선택 = \(choice)")
        }
    }
}

struct ContentView: View {
    
    @State private var flag = false
    @State private var message = ""
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView(choice: "헤드")) {
                Text("헤드 선택")
            }
            Text(message)
            Toggle(isOn: $flag, label: {
                Text("토글 디스플레이 모드")
            })
            .tint(.black)
            .navigationTitle("네비게이션 타이틀")
            .toolbar(flag ? .hidden : .visible)
//            .navigationBarTitleDisplayMode(flag ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud"
                    } label: {
                        Image(systemName: "icloud")
                            .foregroundStyle(.black)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        message = "완료"
                    } label: {
                        Text("완료")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
