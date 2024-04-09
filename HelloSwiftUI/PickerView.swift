//
//  PickerView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct PickerView: View {
    
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
            Text("Ypu chose \(choice)")
            
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            
            DatePicker(selection: $myDate, label: {Text("Date")})
                .datePickerStyle(.graphical)
            
        }//VStack
    }
}

#Preview {
    PickerView()
}
