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
    
    @State var changeMe = true
    
    var body: some View {
        Image(systemName: "person.fill")
            .font(.system(size: 100))
            .foregroundColor(changeMe ? .red : .green)
            .scaleEffect(changeMe ? 1.75 : 1)
            .animation(.default, value: changeMe)
            .onTapGesture {
                changeMe.toggle()
            }
    }
}
//#Preview {
//    ContentView()
//}

