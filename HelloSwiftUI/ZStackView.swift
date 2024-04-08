//
//  ZStack.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        VStack {
            
//            ZStack {
//                
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                    .position(x: 255, y: 127)
//                
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                    .offset(x: 74, y: 125)
//                
//            }//ZStack
            
            VStack {
                Text("First")
                    .font(.system(size: 40))
                    .background(.yellow)
                
                Text("Second")
                    .font(.system(size: 40))
                    .background(.yellow)
            }//VStack
            .offset(x: 25, y:125)
            
        }//VStack
    }
}

#Preview {
    ZStackView()
}
