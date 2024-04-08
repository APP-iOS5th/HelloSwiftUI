//
//  selectedColor.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct selectedColor: View {
    
    @State private var selectedColor = Color.gray
    
    var body: some View {
        VStack(spacing:28) {
            Rectangle().fill(selectedColor)
            
            Picker("Favorite",selection: $selectedColor) {
                Text("red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            
        }
    }
}

#Preview {
    selectedColor()
}
