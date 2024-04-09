//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) //iOS 15이상 버전부터 사용가능
struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(1.7)
                Text("Cat").tag(2.06)
                Text("Lizaed").tag(3.141592)
                Text("Dog").tag(4.12312)
                Text("Hamster").tag(5.12)
            }.pickerStyle(SegmentedPickerStyle())
            Text("You chose \(choice)")
            
            ColorPicker("Picj a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            
            DatePicker(selection: $myDate, label: {Text("Date")})
                .datePickerStyle(.graphical)
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
