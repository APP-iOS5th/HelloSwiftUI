//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI
struct ContentView: View {
    @State var showAlert = false
    var body: some View {
        VStack {
            
            Button("Show Alert"){
                showAlert.toggle()
            }
            .alert("Warnig!", isPresented: $showAlert){
                Button(role: .cancel){
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
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
