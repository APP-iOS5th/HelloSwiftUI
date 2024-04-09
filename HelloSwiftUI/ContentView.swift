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
    
    /// {} 클로저가 자동으로 실행되서 dateRange에 결과가 담긴다. -> 즉시 실행 클로저
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponent = DateComponents(year: 2024, month: 3, day: 25)
        let endComponent = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponent)! ... calendar.date(from: endComponent)! // ... 는 언래핑 오퍼레이터와 붙여쓰지 않는걸 권장 (코드의 안정성과 가독성)
    }()
    let formatter = DateFormatter()
    
    var body: some View {
        VStack {
            Text("Chosen date \n \(formatter.string(from: myDate))")
                .frame(height: 45)
                .padding()
            
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.graphical)
                .padding()
            
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.wheel)
                .datePickerStyle(.graphical)
                .padding(.leading, 25)
            
            Form {
                DatePicker("날짜 선택", selection: $myDate, in: dateRange)
            }
        }.onAppear() {
            formatter.locale = Locale(identifier: "ko_KR")
            formatter.dateStyle = .full
            formatter.timeStyle = .short
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
