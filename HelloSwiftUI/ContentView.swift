//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var move = true
    
    var body: some View {
        VStack {
            Text("A Text view")
                .offset(x: move ? 100 : 0, y: move ? 100 : 0)
                .animation(.default, value: move) // 애니메이션 추가
            Toggle(isOn: $move, label: {
                Text("Toggle me")
            })
        }
    }
}


#Preview {
    ContentView()
}
