//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var flag = true
    @State var message = "상단바의 아이콘을 탭 해보세요. "
    
    var body: some View {
        NavigationStack {
            Text(message)
            Toggle(isOn: $flag) {
                Text("토글 디스플레이 모드")
            }
            .padding()
            .navigationTitle("네비게이션 타이틀")
//            .toolbar(.hidden)
            .navigationBarTitleDisplayMode(flag ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        message = "iCloud 아이콘 탭 되었음."
                    }) {
                        Image(systemName: "icloud")
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        message = "gear 아이콘 탭 되었음."
                    }) {
                        Image(systemName: "gear")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        message = "house 아이콘 탭 되었음."
                    }) {
                        Image(systemName: "house")
                    }
                }
            }
        }
        .accentColor(.purple)
    }
}

//#Preview {
//    ContentView()
//}

