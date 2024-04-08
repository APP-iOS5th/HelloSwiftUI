//
//  SegmentButtonExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct SegmentButtonExample: View {
    
    @State private var selectedColor: Color = Color.gray
    
    var body: some View {
        VStack(spacing: 28) {
            Rectangle()
                .fill(selectedColor)
            
            Picker("Favorite Color", selection: $selectedColor) {
                Text("Red").tag(Color.red)
                Text("Blue").tag(Color.blue)
                Text("Green").tag(Color.green)
            }
            .pickerStyle(.segmented)
        }
        .padding() // MARK: default padding: 16
    }
}

#Preview {
    SegmentButtonExample()
}
