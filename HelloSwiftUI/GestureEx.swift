//
//  GestureEx.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct GestureEx: View {
    
    @State var changeMe1 = false
    @State var changeMe2 = false
    @State var changeMe3 = false
    @State var message = ""
    
    var body: some View {
        VStack {
            
            HStack {
                //onTapGesture
                Rectangle()
                    .frame(width: 175, height: 125)
                    .foregroundStyle(changeMe1 ? .red : .yellow)
                    .onTapGesture(count: 2) { //count 2로 2번탭해야 토글 발생
                        changeMe1.toggle()
                    }
                
                //LongPress
                Rectangle()
                    .frame(width: 175, height: 125)
                    .foregroundStyle(changeMe2 ? .red : .yellow)
                    .onLongPressGesture {
                        changeMe2.toggle()
                    }
            }
            .padding()
            
            HStack {
                
                Text("\(message)").padding()
                
                //LongPress
                Rectangle()
                    .frame(width: 175, height: 125)
                    .foregroundStyle(changeMe3 ? .red : .yellow)
                    .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: { stillPressed in
                        message = "Long press in progress: \(stillPressed)"
                    }) {
                        changeMe3.toggle()
                    }
            }
            
            
        }
    }
}

#Preview {
    GestureEx()
}
