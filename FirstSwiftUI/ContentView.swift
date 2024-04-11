//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct FileView: View {
    
   @Binding var choice: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("Your choice = \(choice)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var message: String = ""
    
    var body: some View {
        NavigationStack {
            Text("Choose Head or Holy")
            TextField("Send a message", text: $message)
            NavigationLink(destination: FileView(choice: $message)) {
                Text("button")
            }
            NavigationLink(destination: SeparateFile(passedData: "HOLY")) {
                Text("Go to SeparateFile View.")
            }
            .navigationTitle("Flip a Coin")
        }
    }
}
//#Preview {
//    ContentView()
//}

