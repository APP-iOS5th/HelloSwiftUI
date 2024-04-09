//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(1.0)
                Text("Cat").tag(2.0)
                Text("Dog").tag(3.0)
                Text("Lizard").tag(4.0)
                Text("Hamster").tag(5.0)
            }.pickerStyle(SegmentedPickerStyle())
            Text("You Choose \(choice)")
            
            ColorPicker("Choice Color", selection: $myColor)
            Rectangle()
                .frame(width: 150, height: 100)
                .foregroundStyle(myColor)
            
            DatePicker(selection: $myDate, label: { Text("Date") })
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
 static var previews: some View {
 ContentView()
 }
 }
 */
