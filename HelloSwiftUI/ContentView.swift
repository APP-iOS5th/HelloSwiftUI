//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI
@available(iOS 15.0, *)
struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(1.7)
                Text("cat").tag(2.06)
                Text("Lizaed").tag(3.4)
                Text("Dog").tag(4.9)
                Text("Hamster").tag(5.28)
            } .pickerStyle(SegmentedPickerStyle())
            Text("You chose \(choice)")
            
            ColorPicker("Pick a color", selection: $myColor)
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundStyle(Color(myColor))
            
            DatePicker(selection: $myDate, label: {
                Text("Date")
            })
            .datePickerStyle(.graphical)
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
