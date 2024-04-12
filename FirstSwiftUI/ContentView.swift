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
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("width = \(geometry.size.width)")
                Text("height = \(geometry.size.height)")
            }
        }
        .background(.green)
    }
}
//#Preview {
//    ContentView()
//}

