//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    @State private var intChoice1 = 0
    @State private var intChoice2 = 0
    @State private var floatChoice = 0.0
    @State private var myColor = Color.green
    @State var myDate = Date.now
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Picker(selection: $intChoice1, label: Text("Picker")) {
                    Text("Bird").tag(1)
                    Text("Cat").tag(2)
                    Text("Lizard").tag(3)
                    Text("Dog").tag(4)
                    Text("Hamster").tag(5)
                }
                Text("You choose \(intChoice1)")
                Spacer()
                
                Picker(selection: $floatChoice, label: Text("Picker")) {
                    Text("Bird").tag(1.4)
                    Text("Cat").tag(2.24)
                    Text("Lizard").tag(3.76)
                    Text("Dog").tag(4.73)
                    Text("Hamster").tag(5.75)
                }
                Text("You choose \(String(format: "%.2f", floatChoice))")
            }
            Spacer()
            
            Picker(selection: $intChoice2, label: Text("Picker")) {
                Text("Bird").tag(1)
                Text("Cat").tag(2)
                Text("Lizard").tag(3)
                Text("Dog").tag(4)
                Text("Hamster").tag(5)
            }.pickerStyle(SegmentedPickerStyle())
            Text("You choose \(intChoice2)")
            Spacer()
            
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 250, height: 80)
                .foregroundColor(myColor)
            Spacer()
            
            DatePicker(selection: $myDate, label: { Text("Date") })
                .datePickerStyle(.graphical)
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
