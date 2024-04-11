//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI

struct FileView : View {
    var choice : String
    var body : some View {
        VStack {
            Text("select = \(choice)")
        }
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination:  FileView(choice: "head")){
            Text("select Head")
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
 static var previews: some View {
 ContentView()
 }
 }
 */
