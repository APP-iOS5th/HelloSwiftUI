//
//  CustomButton.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        Button("여기를 클릭하세요") {
            print("클릭시 실행코드1")
        }
        
        Button {
            print("클릭시 실행코드 2")
        } label: {
            Text("Click here")
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding()
                .border(Color.red, width: 6)
        }
        
        Button(action: {
            print("버튼 클릭시 실행코드3")
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
