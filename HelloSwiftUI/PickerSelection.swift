//
//  PickerSelection.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/9/24.
//

import SwiftUI

struct PickerSelection: View {
    
    @State private var choice = 0
    @State private var myColor = Color.red
    @State private var myDate = Date.now
    
//    let dateRange = ClosedRange<Date> = {
//        let calendar = Calendar.current
//        let startComponents = DateComponents(year:2024,month: 3,day: 25)
//        let endComponents = DateComponents(year: 2024,month: 9,day: 13)
//        
//        return calendar.date(from: startComponents)!
//        ...
//        calendar.date(from:endComponents)!
//    }()

    
    
    
    
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    
    
    
    var body: some View {
        VStack {
//            Picker(selection:$choice,label:Text("Picker")) {
//                Text("Bird").tag(1)
//                Text("Cat").tag(2)
//                Text("Lizard").tag(3)
//                Text("Dog").tag(4)
//                Text("Hamster").tag(5)
//            }.pickerStyle(SegmentedPickerStyle())
//            Text("You chose \(choice)")
//            
//            ColorPicker("Pick a color", selection: $myColor)
//            Rectangle()
//                .frame(width: 200,height: 150)
//                .foregroundColor(myColor)
            
            Text("Chosen date = \(myDate)")
                                        .padding()
                        DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                            .datePickerStyle(.graphical)
                            .padding()
        }
    }
}

#Preview {
    PickerSelection()
}
