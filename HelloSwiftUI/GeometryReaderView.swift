//
//  GeometryReaderView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/12/24.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        
        VStack {
            Text("This Text view pushes the geometryReader down")
            HStack {
                Text("This Text view pushes tothe geometryReader right")
                GeometryReader { geometry in
                    VStack {
                        
                        Text("Width = \(geometry.size.width)")
                        Text("Height = \(geometry.size.height)")
                        
                        Text("UIScreen = \(UIScreen.main.bounds)")
                        
                        Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                        Text("Local y origin = \(geometry.frame(in: .local).origin.y)")
                        Text("global X origin = \(geometry.frame(in: .global).origin.x)")
                        Text("global y origin = \(geometry.frame(in: .global).origin.y)")
                        //safeArea 공간 뺴고 알려줌
                        
                        Text("minX = \(geometry.frame(in: .local).minX)")
                        Text("minY = \(geometry.frame(in: .local).minY)")
                        Text("midX = \(geometry.frame(in: .local).midX)")
                        Text("midY = \(geometry.frame(in: .local).midY)")
                        Text("maxX = \(geometry.frame(in: .local).maxX)")
                        Text("maxY = \(geometry.frame(in: .local).maxY)")
                    }
                }
                .background(Color.yellow)
                .ignoresSafeArea()
            }
        }
        
    }
    
}

#Preview {
    GeometryReaderView()
}
