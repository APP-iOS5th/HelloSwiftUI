//
//  alertView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct alertView: View {
    
    @State var showAlert = false
    
    var body: some View {
        VStack {
            
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert(
                Text("Warning!"),
                isPresented: $showAlert
            ) { 
                Button(role: .cancel) {
                } label: {
                    Text("OK")
                }
            } message: { 
                Text("Zombies on the loose")
            }
            //            .alert(isPresented: $showAlert, content: {
            //                Alert(title: Text("Warning!"), message: Text("Zombies on the loose"), dismissButton: .default(Text("OK")))
            //            })
            
        }//VStack
    }
}

#Preview {
    alertView()
}
