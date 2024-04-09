//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show ActionSheet") {
                showAlert.toggle()
            }
            .confirmationDialog("Warning!", isPresented: $showAlert) {
                Button(role: .none) {
                    print("option1 action")
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
