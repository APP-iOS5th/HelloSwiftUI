//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // 시스템(SF Symbols) 이미지를 불러옴
            Label("Text", systemImage: "clock.circle").font(.title)
            
            // 다운로드 한 assets에서 불러옴
            Label {
                Text("No modifiers")
            } icon: {
                Image("clock-solid")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
            }
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
