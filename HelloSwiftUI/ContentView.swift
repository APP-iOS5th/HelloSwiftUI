//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
    }()
    let formatter = DateFormatter()
    
    var body: some View {
        VStack {
            Text("Chosne date = \(formatter.string(from: myDate))")
                .padding()
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.graphical)
                .padding()
        }.onAppear() {
            formatter.locale = Locale(identifier: "ko_KR")
//            formatter.locale = Locale(languageCode: "ko", languageRegion: "KR")
            formatter.dateStyle = .medium
        }
    }
}

#Preview {
    ContentView()
}
