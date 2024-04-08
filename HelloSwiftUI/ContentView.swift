//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                
        }
        .padding()
    }
}

/// 계속 개발중, 6월이 지나면 어떻게 바뀔지 모름.
#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
