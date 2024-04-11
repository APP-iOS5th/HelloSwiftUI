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
    
    @State var move = true
    
    var body: some View {
        VStack {
            Text("A Text View")
                .offset(x: move ? 100 : 0, y: move ? 100 : 0)
                .animation(.default, value: move)
            Toggle(isOn: $move) {
                Text("Toggle me.")
            }
        }
    }
}
//#Preview {
//    ContentView()
//}

