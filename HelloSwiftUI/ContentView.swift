//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View{
        VStack {
            Button ("Show Alert"){
                showAlert.toggle()
            }
            .alert("Warning", isPresented: $showAlert) {
                Button(role: .cancel) {
                    print("button action")
                } lable: {
                    Text("OK!")
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
