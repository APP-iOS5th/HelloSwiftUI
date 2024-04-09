//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show ActionSheet") {
                showAlert.toggle()
            }
            .confirmationDialog("삭제하시겠습니까?", isPresented: $showAlert, titleVisibility: .visible) {
                Button(role: .none) {
                    print("option1 action")
                } label: {
                    Text("삭제")
                }
                Button(role: .destructive) {
                    print("option2 action")
                } label: {
                    Text("취소")
                }
            } message: {
                Text("ZOMBIE")
            }
        }
    }
}

#Preview {
    ContentView()
}
