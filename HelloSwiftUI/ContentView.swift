//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    var body: some View {
        VStack {
            Link(destination: URL(string: "http: //www.apple.com")!, label: { //링크 프리뷰에서는 동작 지원하지 않음
                Text("Apple")
            })
            Text(message).padding()
            
            Menu("Options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete...", action: deleteFile)
            }
        }
    }
    func openFile() {
        message = "Open chosen"
    }
    
    func findFile() {
        message = "Find chosen"
    }
    func deleteFile() {
        message = "Delete chosen"
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
