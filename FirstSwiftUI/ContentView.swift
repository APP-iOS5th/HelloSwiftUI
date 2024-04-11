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
    
    @State var sliderValue = 0.0
    @State var message =  ""
    @State var flag = true
    
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: true) { // 스크롤 수직/수평 조절과 스크롤 표시여부
            ForEach(0..<50) {
                Text("Item #\($0)")
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

