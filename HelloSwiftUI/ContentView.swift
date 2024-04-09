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
        ... // ClosedRange에 존재하는 operator
        calendar.date(from: endCOmponents)!
    }() // 선언부에 정의된 함수를 실행한다는 의미
    
    let formatter = DateFormatter()
    
    var body: some View {
        VStack {
            Text("Chosen date = \(formatter.string(from: myDate))")
                .padding()
            // 날짜 선택
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.graphical)
                .padding()
        }.onAppear() {
            formatter.locale = Locale(identifier: "ko_KR")
            formatter.dateStyle = .full // 요일까지 출력
            formatter.timeStyle = .medium // 시간 출력
        }
    }
}


#Preview {
    ContentView()
}
