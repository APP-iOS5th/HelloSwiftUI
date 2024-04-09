//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    @State var myDate = Date.now
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponent = DateComponents(year: 2024, month: 3, day: 25)
        let endComponent = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponent)!...calendar.date(from: endComponent)!
    }()
    
    var body: some View {
        VStack {
            Text("Chosen date = \(myDate)")
                .padding()
            
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.graphical)
                .padding()
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
