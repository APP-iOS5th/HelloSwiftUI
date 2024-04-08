//
//  Button.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct BTN: View {
    var body: some View {
        
        @State var colorMe = false
       
        VStack {
            
            Rectangle()
                .fill(colorMe ? Color.green : Color.gray)
                .frame(width: 250,height:100)
            
            
            Button("여기를 클릭하세요") {
                print("\(colorMe.description)")
                
                colorMe.toggle()
               
            }
            
            Button {
                colorMe.toggle()
                print("2")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red,width: 6)
                
                
                
            }
            
            Button {
                colorMe.toggle()
                print("3")
            } label: {
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 150,height: 150 )
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow,lineWidth: 4))
            }
            
            
            
            
            
        }
        
    }
}

#Preview {
    BTN()
}
