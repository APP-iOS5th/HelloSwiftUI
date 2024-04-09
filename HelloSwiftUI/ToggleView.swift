//
//  ToggleView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct ToggleView: View {
    
    @State var myToggle = true
    @State var newValue = 0
    
    var body: some View {
        
        VStack {
            
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }
            .padding()
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundStyle(myToggle ? Color.orange : Color.green)
                .padding()
            
            Stepper(value: $newValue) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
            
        }//VStack
        
    }
}

#Preview {
    ToggleView()
}
