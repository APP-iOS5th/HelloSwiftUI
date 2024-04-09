//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State private var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice) {
                Text("Bird").tag(1.7)
                Text("Cat").tag(2.7)
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)
            Text("You choose \(choice)")
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundStyle(myColor)
            DatePicker(selection: $myDate) {
                Text("Date")
            }
            .datePickerStyle(.graphical)
        }
    }
}

#Preview {
    ContentView()
}
