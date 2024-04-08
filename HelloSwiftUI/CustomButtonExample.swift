//
//  CustomButtonExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct CustomButtonExample: View {
    
    @State private var colorMe: Bool = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(colorMe ? .green : .gray)
                .frame(width: 200, height: 200)
            
            MultipleSpacer(multiple: 1)
            
            Button("클릭해봐 1") {
                colorMe.toggle()
            }
            
            Button(action: {
                colorMe.toggle()
            }, label: {
                Text("클릭해봐 2")
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                    .padding()
                    .border(.red, width: 6)
            })
            
            Button {
                colorMe.toggle()
            } label: {
                HStack {
                    Text("클릭해봐 3")
                    
                    Image("sample_cat_square")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(.yellow, lineWidth: 4))
                }
            }
        }
    }
}

#Preview {
    CustomButtonExample()
}
