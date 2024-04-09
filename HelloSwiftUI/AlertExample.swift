//
//  AlertExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct AlertExample: View {
    
    @State private var showAlert: Bool = false
    @State private var secondAlert: Bool = false
    
    var body: some View {
        VStack {
            Button {
                self.showAlert.toggle()
            } label: {
                Text("알림!")
            }
            .alert("Zombie 어쩌구 저쩌구", isPresented: $showAlert) {
                Button {
                    self.secondAlert.toggle()
                } label: {
                    Text("First Alert")
                }
//                MARK: alert 중첩은 안되네..
//                .alert("무한 알람 ㄷㄷ", isPresented: $secondAlert) {
//                    Button {
//                        
//                    } label: {
//                        Text("Second Alert")
//                    }
//                } message: {
//                    Text("Stop Alert")
//                }
            } message: {
                Text("Zombie ....")
            }
            // MARK: Deprecated version
//            .alert(isPresented: $showAlert, content: {
//                Alert(title: Text("알림!"), message: Text("Zombies on the loose"), dismissButton: .default(Text("OK")))
//            })
        }
        .padding()
    }
}

#Preview {
    AlertExample()
}
