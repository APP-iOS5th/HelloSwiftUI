//
//  CustomButton.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

struct CustomButton: View {
    
    @State var colorMe = false
    
    var body: some View {
        
        Rectangle()
            .fill(colorMe ? Color.green : Color.gray)
            .frame(width: 250, height: 250)
        
        Button("여기를 클릭하세요") {
            colorMe.toggle()
        }
        
        Button {
            colorMe.toggle()
        } label: {
            Text("Click here")
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding()
                .border(Color.red, width: 6)
        }
        
        Button(action: {
            colorMe.toggle()
        }, label: {
            Image("sample_cat_square")
                .resizable()
                .frame(width: 150, height: 150)
        })
    }
}

#Preview {
    CustomButton()
}
