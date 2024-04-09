//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State private var choice = 0.0
    @State private var color = Color.red
    @State private var myDate = Date.now
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
    }()
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(1.2)
                Text("Dog").tag(2.08)
                Text("Crested Gecko").tag(31.723)
            }
            .pickerStyle(.segmented)
            Text("Your pet is \(choice)")
            
            ColorPicker("Pick a color", selection: $color)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
            
            DatePicker(selection: $myDate, label: {
                Text("Date.")
            })
            
            //dateRange 기간만큼 DatePicker에서 disable함.
            DatePicker(selection: $myDate, in:dateRange, displayedComponents: [.date], label: {
                Text("Date!")
            })
            .datePickerStyle(.graphical)
            .padding()
            
            Text(dateRange)
        }
    }
}

//#Preview {
//    ContentView()
//}

