//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI



import SwiftUI


struct ContentView:View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
        Picker(selection: $choice, label: Text("Picker")) {
            Text("Bird").tag(1.7)
            Text("Cat").tag(2.06)
            Text("Human").tag(3.4)
            Text("Dog").tag(4.13)
            Text("Leeseokyung").tag(5.28)
            Text("Dodo").tag(6.2)
            Text("Hamster").tag(7.2)
        }.pickerStyle(SegmentedPickerStyle())
        Text("You chose \(choice)")
        
        ColorPicker("Pick a color", selection: $myColor)
        Rectangle()
            .frame(width: 200, height: 150)
            .foregroundStyle(myColor)
        
        DatePicker(selection: $myDate, label: { Text("Date")})
            .datePickerStyle(.graphical)
    }
    
    
}

#Preview {
    ContentView()
}
