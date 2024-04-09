//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day:25)
        let endComponents = DateComponents(year:2024, month:9, day: 13)
        return calendar.date(from: startComponents)! ... calendar.date(from:endComponents)!
    }()
    
    let formatter = DateFormatter()
 
    
    var body: some View {
        VStack {
            Text("Chosen Date = \(formatter.string(from: myDate))")
                .padding()
            DatePicker(selection: $myDate,in: dateRange, displayedComponents: [.date], label: {
                Text("Date")})
            .datePickerStyle(.graphical)
            .padding()
            
        }.onAppear() {
            formatter.locale = Locale(identifier: "ko_KR")
            formatter.dateStyle = .long
            formatter.timeStyle = .short
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
