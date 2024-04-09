//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}


struct ContentView: View {
    @State var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)! ... calendar.date(from: endComponents)!
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
            //formatter.dateStyle = .short
            formatter.locale = Locale(identifier: "ko_KR")
            formatter.dateStyle = .long
            formatter.timeStyle = .short
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
