//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show ActionSheet") {
                showAlert.toggle()
            }
//            .actionSheet(isPresented: $showAlert) {
//                ActionSheet(title: Text("Warning!"), message: Text("Zombies on the loose"), buttons: [.default(Text("OK"))])
//            }
            .confirmationDialog("Warning!", isPresented: $showAlert, titleVisibility: .visible) {
                Button(role: .none) {
                    print("button action")
                } label: {
                    Text("option1")
                }
                Button(role: .destructive) {
                    print("option2 action")
                } label: {
                    Text("option2")
                }
            } message: {
                Text("Zombies on the loose")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
