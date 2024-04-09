//
//  MapExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct ContextMenuExample: View {
    
    @State var myColor: Color = .gray
    private let randomColor: [Color] = [.red, .purple, .green, .orange]
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(myColor)
                .onTapGesture(count: 2) {
                    myColor = randomColor.randomElement()!
                }
            
            Text("Pick a color")
                .padding()
                .contextMenu {
                    Button("Red", action: red)
                    Button("Purple", action: purple)
                    Button("Green", action: green)
                    Button("Orange", action: orange)
                }
        }
    }
    
    func red() {
        myColor = .red
    }
    func purple() {
        myColor = .purple
    }
    func green() {
        myColor = .green
    }
    func orange() {
        myColor = .orange
    }
}

#Preview {
    ContextMenuExample()
}
