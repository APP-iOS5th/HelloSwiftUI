//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

// 버전 컨트롤(버전 15 아래는 실행되지 않음)
@available(iOS 15.0, *)
struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(1.7)
                Text("Cat").tag(2.06)
                Text("Lizard").tag(3.41)
                Text("Dog").tag(4.13)
                Text("Hamster").tag(5.28)
            }.pickerStyle(SegmentedPickerStyle())
            // 각 목록의 tag 값이 나옴
            Text("You choose \(choice)")
            
            // 색상 선택
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            
            // 날짜 선택
            DatePicker(selection: $myDate, label: { Text("Date") })
                .datePickerStyle(.graphical) // 캘린더
        }
    }
}


#Preview {
    ContentView()
}
