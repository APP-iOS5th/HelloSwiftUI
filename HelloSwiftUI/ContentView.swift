//
//  ToggleView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI


struct FileView: View {
    var choice: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This chose = \(choice)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            Text("choose Heads or Tails")
            NavigationLink(destination: FileView(choice: "Heads")) {
                Text("Heads")
            }
            
            NavigationLink(destination: SeparateFile(passedData: "Tails")) {
                Text("Tails")
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
