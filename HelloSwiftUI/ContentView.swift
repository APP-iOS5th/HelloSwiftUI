//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
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
                TextField("Type here", text: $choice.message)
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    @StateObject var showMe = ShareString()
    var body: some View {
        NavigationStack {
            TextField("Type here", text: $showMe.message)
            NavigationLink(destination: FileView()) {
                Text("Heads")
            }
            NavigationLink(destination: SeparateFile()) {
                Text("Tails")
            }
            .navigationTitle("Flip a coin")
        }
        .environmentObject(showMe)
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
