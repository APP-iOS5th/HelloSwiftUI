//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct FileView: View {
    var choice: String
    
    var body: some View {
        VStack{
            Text("선택 = \(choice)")
        }
    }
}

struct ContentView: View {
    
    @State var flag = true
    @State var naviFlag = true
    @State var message = ""
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination:
                FileView(choice: "헤드")
            ) {
                Text("헤드선택")
            }

        }
        
    }
    
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
