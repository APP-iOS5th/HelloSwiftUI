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
            
            Button("Show ActionSheet"){
                showAlert.toggle()
            }
            .confirmationDialog("Warnig!", isPresented: $showAlert,
                                titleVisibility: .visible){
                Button(role: .none){
                    print("optin1 action")
                }label: {
                    Text("option1")
                }
                Button(role: .destructive){
                    print("optin2 action")
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
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
