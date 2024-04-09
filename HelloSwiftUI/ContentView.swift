//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?
struct ContentView: View {
    @State private var myDate = Date.now
    let dateRange:  ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
    } () //() 이게 있어서 선언하자마자 바로 실행됨
    
    let formatter = DateFormatter() //얘는 함수 아니고 객체임 밑의 정보들을 가지고 있는,,
    
    var body: some View {
        VStack  {
            Text("Chosen data = \(formatter.string(from: myDate))")
                .padding()
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date")} )
                .datePickerStyle(.graphical)
                .padding()
        } .onAppear() {
            formatter.locale = Locale(identifier: "ko_KR")
            formatter.dateStyle = .full
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

