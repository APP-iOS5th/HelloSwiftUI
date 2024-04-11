//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

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
