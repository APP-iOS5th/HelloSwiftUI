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
            .alert("Warning!", isPresented: $showAlert) { //alert 이라는 모디파이어가 생성자 함수처럼,, 기존은 content 에서 별도의 객체?
                Button(role: .cancel) {
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

