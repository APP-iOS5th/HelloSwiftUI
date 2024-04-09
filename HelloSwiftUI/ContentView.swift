//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI
@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?
struct ContentView: View {
    @State private var choice = 0.0 //중간에 뭔가 추가해야할거같을 때 double로 하면 정수는 뒤에걸 다 수정해야하지만 소수점은 중간에 추가가 용이함.
    @State private var myColor = Color.red
    @State private var myDate = Date.now
    
    var body: some View {
        VStack  {
            Picker(selection: $choice, label: Text("Picerk")) {
                Text("Bird").tag(1.7)
                Text("Cat").tag(2.06)
                Text("Lizard").tag(3.41)
                Text("Dog").tag(4.13)
                Text("Hamster").tag(5.28)
            }.pickerStyle(SegmentedPickerStyle())
            Text("You chose \(choice)")
            
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            
            DatePicker(selection: $myDate, label: { Text("Date") } )
                .datePickerStyle(.graphical)
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

