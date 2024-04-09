//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                 showAlert.toggle()
             }
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
