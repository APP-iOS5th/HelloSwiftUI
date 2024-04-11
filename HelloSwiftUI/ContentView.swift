//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//
//바인딩을쓰면 거기에 쓰이는 변수를 고칠 수 있게 해줌

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
                Text("Head")
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
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
