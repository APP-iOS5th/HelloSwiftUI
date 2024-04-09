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
            Button("Show Alert") {
                showAlert.toggle()
            }
//            .alert(isPresented: $showAlert, content: {
//                Alert(title: Text("Warning"), message: Text("Zombies on the loose"), dismissButton: .default(Text("OK"))
//                )
//            })
            .alert("Warning!", isPresented: $showAlert) {
                Button(role: .cancel) {
                    print("button action")
                } label: {
                    Text("OK!")
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
