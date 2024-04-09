//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
        @State var showAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Warning!"), message: Text("Zombies on the loose"), dismissButton: .default(Text("OK"))
                      )
            })
        }
    }
}


#Preview {
    ContentView()
}
 
