//
//  NavigationStackEx.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct NavigationStackEx: View {
    
    @State var flag = true
    @State var message = ""
    
    var body: some View {
        VStack {
            
            NavigationStack {
                Text(message)
                Toggle(isOn: $flag, label: {
                    Text("토글 디스플레이 모드")
                })
                .navigationTitle("네비게이션 타이틀")
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
        }
        .accentColor(.purple)
    }
}

#Preview {
    NavigationStackEx()
}
