//
//  GerometryReader.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/12/24.
//

import SwiftUI

struct GerometryReader: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                Text("Width = \(geometry.size.width)")
                Text("height = \(geometry.size.height)")
            }
            
        }
        .background(.red)
        .ignoresSafeArea()
    }
}

#Preview {
    GerometryReader()
}
