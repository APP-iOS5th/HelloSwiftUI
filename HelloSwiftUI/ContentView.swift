//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


class ShareString: ObservableObject {
    @Published var message = ""
    @Published var tailMessage = ""
    
}


struct FileView: View {
    @EnvironmentObject var choice: ShareString
    
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here:", text: $choice.message)
                Text("\(choice)")
//                Text("This is a separate structure")
//                Text("that's stored in the same file")
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
            Spacer()
            
            TextField("Type hear: ", text: $showMe.message)
                .padding()
            NavigationLink(destination: FileView()) {
                Text("Heads")
            }
            
            
            Spacer()
            Text("\(showMe.tailMessage)")
                .padding()
            NavigationLink(destination: SeparateFile()) {
                Text("Tails")
            }
            .navigationTitle("Flip a coin")
            
        
            Spacer()
        }
        .environmentObject(showMe)
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
