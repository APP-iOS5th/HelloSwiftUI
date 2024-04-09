//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {

    @State var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calender = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calender.date(from: startComponents)!
        ...
        calender.date(from: endComponents)!
    }()
    
    var body: some View {
        VStack {
            Text("Chosen Date\n\n\(myDate)")
                .multilineTextAlignment(.center)
                .padding()
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date] ,label: { Text("Date") })
                .datePickerStyle(.graphical)
                .padding()
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
