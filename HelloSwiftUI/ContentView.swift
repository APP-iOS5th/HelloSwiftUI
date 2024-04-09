//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert(Text("Warning!"), isPresented: $showAlert) {
//                Button("OK") {
//                    print("Click OK")
//                }
                Button(role: .cancel) {
                    print("Click OK")
                } label: {
                    Text("OK")
                }
            } message: {
                Text("Zombies on the loose")
            }
        }
    }
}

#Preview {
    ContentView()
}
