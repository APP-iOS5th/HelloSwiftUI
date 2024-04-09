//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert("Warning", isPresented: $showAlert) {
                Button(role: .cancel) {
                    print("Button action")
                } label: {
                    Text("OK!")
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

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
