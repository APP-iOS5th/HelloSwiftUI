//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endCOmponents = DateComponents(year: 2024, month: 9, day: 13)
        
        return calendar.date(from: startComponents)!
        ...
        calendar.date(from: endCOmponents)!
    }()
    
    var body: some View {
        VStack {
            Text("Chosen date = \(myDate)")
                .padding()
            // 날짜 선택
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.graphical) // 캘린더
                .padding()
        }
    }
}


#Preview {
    ContentView()
}
