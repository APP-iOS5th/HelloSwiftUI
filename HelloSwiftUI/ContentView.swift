//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var changeme1 = false
    @State var changeme2 = false
    @State var changeme3 = false
    @State var message = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeme1 ? .red : .yellow)
                .onTapGesture {
                    changeme1.toggle()
                 }
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeme2 ? .red : .yellow)
                .onTapGesture(count: 2) {
                    changeme2.toggle()
                 }
            Text(message).padding()
            
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeme3 ? .red : .yellow)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: {stillPressed in
                                    message = "Long Press in progress: \(stillPressed)"}){
                    changeme3.toggle()
                 }
        }
    }
}


#Preview {
    ContentView()
}
 
