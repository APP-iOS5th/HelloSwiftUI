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
    
    private let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let start = DateComponents(year: 2024, month: 3)
        let end = DateComponents(year: 2024, month: 5)
        
        return calendar.date(from: start)!...calendar.date(from: end)!
    }()
    
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
//            DatePicker(selection: $myDate) {
//                Text("Date")
//            }
//            .datePickerStyle(.graphical)
            DatePicker(
                "Date",
                selection: $myDate,
                in: dateRange,
                displayedComponents: .date
            )
            .datePickerStyle(.graphical)
        }
    }
}

#Preview {
    ContentView()
}
