//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

enum Animal {
    case bird
    case cat
    case lizard
}

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State private var choice: Animal = .bird
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(Animal.bird)
                Text("Cat").tag(Animal.cat)
                Text("Lizard").tag(Animal.lizard)
            }.pickerStyle(SegmentedPickerStyle())
            Text("You choose \(choice)")
            
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            
            DatePicker(selection: $myDate, label: {Text("Date")})
                .datePickerStyle(.wheel)
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
