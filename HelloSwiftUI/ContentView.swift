//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State private var myDate = Date.now
    var body: some View {
        VStack {
//            Picker(selection: $choice, label: Text("Picker")) {
            Picker("Picker", selection: $choice) {
                Text("Bird").tag(1.7)
                Text("Cat").tag(2.06)
                Text("Lizard").tag(3.41)
                Text("Dog").tag(4.13)
                Text("Hamster").tag(5.28)
            }
            .pickerStyle(SegmentedPickerStyle())
            Text("You chose \(choice)")
            
//            ColorPicker("Pick a color", selection: $myColor)
            ColorPicker(selection: $myColor, label: { Text("Pick a color")})
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(myColor)
            
            DatePicker(selection: $myDate, label: { Text("Date") })
//            DatePicker("Date", selection: $myDate)
                .datePickerStyle(.compact)
        }
    }
}

#Preview {
    ContentView()
}
