//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

class ShareViewModel: ObservableObject {
    @Published var message = ""
}

struct FileView: View {
    
    @EnvironmentObject var choiceVM: ShareViewModel
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("Your choice = \(choiceVM.message)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @StateObject var showVM = ShareViewModel()
    
    var body: some View {
        NavigationStack {
            Text("Choose Head or Holy")
            TextField("Send a message", text: $showVM.message)
            NavigationLink(destination: FileView()) {
                Text("button")
            }
            NavigationLink(destination: SeparateFile()) {
                Text("Go to SeparateFile View.")
            }
            .navigationTitle("Flip a Coin")
        }
        .environmentObject(showVM)
    }
}
//#Preview {
//    ContentView()
//}

