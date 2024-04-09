//
//  PickerExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct PickerExample: View {
    
    @State private var choice: Int = 0
    @State private var myColor: Color = .red
    @State private var myDate: Date = Date.now
    
    var body: some View {
        ScrollView {
            VStack {
                Picker(selection: $choice) {
                    Text("Bird").tag(1)
                    Text("Cat").tag(2)
                    Text("Lizard").tag(3)
                    Text("Dog").tag(4)
                    Text("Hamster").tag(5)
                } label: {
                    Text("Picker")
                }
                .pickerStyle(SegmentedPickerStyle())
                Text("your choice: \(choice)")
                
                ColorPicker("Pick a color", selection: $myColor)
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(myColor)
                
                DatePicker("Pick a date", selection: $myDate)
                    .datePickerStyle(.graphical)
            }
            .padding()
        }
    }
}

#Preview {
    PickerExample()
}
