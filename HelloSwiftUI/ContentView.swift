//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?

struct FileView: View {
    var choice: String
    
    var body: some View {
        VStack {
            Text("선택 = \(choice)")
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView(choice: "헤드")) {
                Text("헤드 선택")
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
 static var previews: som View {
 ContentView()
 }
 }
 */

