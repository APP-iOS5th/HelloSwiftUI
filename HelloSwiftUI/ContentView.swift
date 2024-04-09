//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show ConfirmationDialog") {
                showAlert.toggle()
            }.confirmationDialog("Warning!", isPresented: $showAlert, titleVisibility: .visible) {
                Button(role: .none) {
                } label: {
                    Text("Option 1")
                }
                Button(role: .destructive) {
                } label: {
                    Text("Option 2")
                }
            } message: {
                Text("Zombie on the loose")
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
