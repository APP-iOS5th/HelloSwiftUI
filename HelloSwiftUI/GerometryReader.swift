//
//  GerometryReader.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/12/24.
//

import SwiftUI

struct GerometryReader: View {
    var body: some View {
        
        VStack {
            
            Text("This Text view pushes the GeometryReader down")
            
            HStack {
                Text("Pushes to the right")
                
                GeometryReader { geometry in
                    VStack {
                        Text("Width = \(geometry.size.width)")
                        Divider()
                        Text("Local X origin = \(geometry.frame(in: .local).origin.x)" )
                        Text("Local Y origin = \(geometry.frame(in: .local).origin.y)" )
                        Divider()
                        Text("Global X origin = \(geometry.frame(in: .global).origin.x)" )
                        Text("Global Y origin = \(geometry.frame(in: .global).origin.y)" )
                    }
                }
                .background(.yellow)
                .ignoresSafeArea()
            }
            
        }
    }
}

#Preview {
    GerometryReader()
}
