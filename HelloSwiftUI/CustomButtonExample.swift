//
//  CustomButtonExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct CustomButtonExample: View {
    var body: some View {
        VStack {
            Button("클릭해봐 1") {
                print("클릭했네? 1")
            }
            
            Button(action: {
                print("클릭했네? 2")
            }, label: {
                Text("클릭해봐 2")
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                    .padding()
                    .border(.red, width: 6)
            })
            
            Button {
                print("클릭했네? 3")
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
