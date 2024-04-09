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
            .confirmationDialog("Warning!", isPresented: $showAlert, titleVisibility: .visible) {
                Button(role: .destructive) {
                    print("option 1 action")
                } label: {
                    Text("Option 1")
                }
                Button(role: .none) {
                    print("option 2 action")
                } label: {
                    Text("Option 2")
                }
            } message: {
                Text("message")
            }
        }
    }
}

#Preview {
    ContentView()
}
