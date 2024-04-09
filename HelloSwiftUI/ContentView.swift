//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI


@available(iOS 15.0, *)  //ios 15 이상에서 가능.
struct ContentView: View {
    
    @State private var choice = 0
    @State private var myColor = Color.red
    @State private var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(1)
                Text("Cat").tag(2)
                Text("Lizard").tag(3)
                Text("Dog").tag(4)
                Text("Hamster").tag(5)
                
                
                
            }.pickerStyle(SegmentedPickerStyle())
            Text("You chose \(choice)")
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            DatePicker(selection: $myDate, label: { Text("Date")}).datePickerStyle(.graphical)
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
