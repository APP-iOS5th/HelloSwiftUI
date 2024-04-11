//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

class ShareString: ObservableObject {
     @Published var message = ""
 }

struct FileView: View {
    @EnvironmentObject var choice: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here:", text: $choice.message)
                Spacer()
            }
            Spacer()
            
        }
    }
}
 struct ContentView: View {
     @StateObject var showMe = ShareString()

     var body: some View {
         NavigationStack {
             TextField("Type here:", text: $showMe.message)
             NavigationLink(destination: FileView()) {
                 Text("Heads")
             }
             NavigationLink(destination: SeparateFile()) {
                 Text("Tails")
             }
             .navigationTitle("Flip a Coin")
         }
         .environmentObject(showMe)
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

