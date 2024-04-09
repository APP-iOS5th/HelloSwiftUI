//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

@available (iOS 15.0, *)
struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Rabiit").tag(1.7)
                Text("Cat").tag(2.06)
                Text("Tiger").tag(3.41)
                Text("Hamster").tag(4.13)
                Text("Dog").tag(5.28)
            }.pickerStyle(SegmentedPickerStyle())
            Text("You chose \(choice)")
            
            ColorPicker("Pick s color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            
            DatePicker(selection: $myDate, label: { Text("Date") })
                .datePickerStyle(.graphical)
                          
            }
        }
    }


#Preview {
    ContentView()
}
 
