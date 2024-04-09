//
//  alertView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct AlertWithActionSheet: View {
    
    @State var showAlert = false
    
    var body: some View {
        VStack {
            
            //ActionSheet -> confirmationDialog
            Button("Show ActionSheet") {
                showAlert.toggle()
            }
            .confirmationDialog("Warning!", isPresented: $showAlert) {
                Button(role: .destructive) {
                    print("Option1 action")
                } label: {
                    Text("Option1")
                }
                Button(role: .destructive) {
                    print("Option2 action")
                } label: {
                    Text("Option2")
                }
            } message: {
                Text("Zombies on the loose")
            }
            .padding()

            
            //Alert
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
    AlertWithActionSheet()
}
