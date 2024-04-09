//
//  TouchGestureExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct TouchGestureExample: View {
    
    @State var changeMe1: Bool = false
    @State var changeMe2: Bool = false
    @State var changeMe3: Bool = false
    @State var message: String = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe1 ? .red : .yellow)
                .onTapGesture {
                    changeMe1.toggle()
                }
            
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe2 ? .red : .yellow)
                .onTapGesture(count: 2) {
                    changeMe2.toggle()
                }
            
            Text("\(message)")
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe3 ? .red : .yellow)
                .onLongPressGesture(minimumDuration: 2,
                                    maximumDistance: 2,
                                    pressing: { stillPressed in
                    message = "Long press in pregress: \(stillPressed)"
                }) {
                    changeMe3.toggle()
                }
        }
        .padding()
    }
}

#Preview {
    TouchGestureExample()
}
