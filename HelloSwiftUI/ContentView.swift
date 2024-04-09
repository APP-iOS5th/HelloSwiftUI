//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calendar =  Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
    }() //()함으로써 즉시 실행 함수가됨
    
    let formatter  = DateFormatter()
    
    var body: some View {
        VStack {
            Text("Chosen date = \(formatter.string(from: myDate))")
                .padding()
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") } )
                .datePickerStyle(.graphical)
                .padding()
            
        }.onAppear() {
            formatter.locale = Locale(identifier: "ko_KR") //년월일 표기법지정
            formatter.dateStyle = .long //날짜 정보, short:. . . long:년 월 일, full: 년 월 일 요일까지 출력,  
            formatter.timeStyle = .long //시간정보
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
