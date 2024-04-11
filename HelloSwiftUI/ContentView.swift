//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?

class Species: Identifiable {
    let id = UUID()
    var name: String
    var classification: [Species]?
    init(name: String, classification: [Species]? = nil) { //nil이 없으면 무조건 있어야함
        self.name = name
        self.classification = classification
    }
}


struct ContentView: View {
    @State var flag = true
    @State var message = ""
    var body: some View {
        NavigationStack {
            Text(message)
            Toggle(isOn: $flag, label: {
                Text("Toggle display mode")
            }) //달러를 왜 써야한다고? 왜 바로 핸들링 못한다고?
            .navigationTitle("Navigation Title")
            //.navigationBarTitleDisplayMode(flag ? .large : .inline)
            .navigationBarHidden(flag)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud 아이콘 탭 됨"
                    } label: {
                        Image(systemName: "icloud")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        message = "완료 버튼 탭 됨"
                    } label: {
                        Text("완료")
                    }
                }
            }
        }
        .accentColor(.purple)
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

