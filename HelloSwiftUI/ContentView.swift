//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
//            .actionSheet(isPresented: $showAlert, content: {
//                ActionSheet(title: Text("Waring!"), message: Text("Zombies on the loose"), buttons: [.default(Text("OK"))])
//            })
            .confirmationDialog("Waring", isPresented: $showAlert) {
                Button(role: .cancel) {
                    print("button action")
                } label: {
                    Text("OK")
                }
                
                Button(role: .destructive) {
                    print("button action")
                } label: {
                    Text("Option")
                }
                
                Button(role: .none) {
                    print("button action")
                } label: {
                    Text("Option2")
                }

            } message: {
                Text("Zombies on the loose")
            }
                
//            .alert(Text("Waring!"), isPresented: $showAlert) {
//                Button("OK") {
//                    
//                }
//            } message: {
//                Text("Zombies on the loose")
//            }
            
//            .alert(isPresented: $showAlert) {
//                Alert(title: Text("Waring!"),
//                      message: Text("Zombies on the loose"),
//                      dismissButton: .default(Text("OK")))
//            }
        }
        
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
