//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?


struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack  {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Warning!"), message: Text("Zombies on the loose"),
                      dismissButton: .default(Text("OK"))
                )
            })
        }
    }
}


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

