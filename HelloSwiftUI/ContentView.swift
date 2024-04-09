//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI


@available(iOS 15.0, *)  //ios 15 이상에서 가능.
struct ContentView: View {
    

    @State private var myDate = Date.now
    let dateRange : ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day:25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)! ... calendar.date(from: endComponents)!
        
    }()
    let formmatter = DateFormatter()
    
    var body: some View {
        VStack {
            
            Text("Chosen date = \(formmatter.string(from:myDate))")
                .padding()
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: {Text("Date")})
                .datePickerStyle(.graphical)
                .padding()
            
        }.onAppear() {
            formmatter.locale = Locale(identifier: "ko_KR")
//            formmatter.dateStyle = .full
            formmatter.dateStyle = .long
            formmatter.timeStyle = .medium
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
