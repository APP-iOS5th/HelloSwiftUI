//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    let formatter = DateFormatter()

    var body: some View {
        VStack {
            Text("Chosen date = \(formatter.string(from: myDate))")
                            .padding()
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.graphical)
                .padding()

        }.onAppear() {
            formatter.locale = Locale(identifier: "ko_KR")
            formatter.dateStyle = .medium
//            formatter.dateStyle = .full
//            formatter.dateStyle = .long
        }
    }
}



#Preview {
    ContentView()
}
 
