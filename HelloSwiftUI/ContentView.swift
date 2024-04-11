//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct FileView: View {
    var chice : String
    var body: some View{
        VStack{
            Text("선택 = \(chice)")
        }
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination: FileView(chice: "헤드")) {
                Text("헤드 선택")
            }
        }
    }
    
}



#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
