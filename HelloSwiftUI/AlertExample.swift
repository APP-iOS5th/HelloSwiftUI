//
//  AlertExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct AlertExample: View {
    
    @State private var showAlert: Bool = false
//    @State private var secondAlert: Bool = false
    
    var body: some View {
        VStack {
            Button {
                self.showAlert.toggle()
            } label: {
                Text("알림!")
            }
            // MARK: - 여러개의 버튼들 알림처럼 표시
            .confirmationDialog("Warning!", isPresented: $showAlert, titleVisibility: .visible) {
                Button(role: .none) {
                    print("option 1 Selected")
                } label: {
                    Text("option 1")
                }
                
                Button(role: .destructive) {
                    print("option 2 Selected")
                } label: {
                    Text("option 2")
                }
            } message: {
                Text("Zombies on the loose")
            }
            
            // MARK: - Alert -> 중첩 alert는 안되더라
//            .alert("Zombie 어쩌구 저쩌구", isPresented: $showAlert) {
//                Button {
//                    
//                } label: {
//                    Text("First Alert")
//                }
//            } message: {
//                Text("Zombie ....")
//            }
            
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
