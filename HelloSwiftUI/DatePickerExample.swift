//
//  DatePickerExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct DatePickerExample: View {
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
    }()
    
    @State private var myDate: Date = Date.now
    
    var body: some View {
        VStack {
            Text("선택된 데이터 > \(myDate)")
            DatePicker(selection: $myDate, 
                       in: dateRange,
                       displayedComponents: [.date]) {
                Text("Date")
            }
            .datePickerStyle(.graphical)
        }
        .padding()
    }
}

#Preview {
    DatePickerExample()
}
