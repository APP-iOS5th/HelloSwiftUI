//
//  Zstack.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct Zstack: View {
    var body: some View {
//        ZStack {
//            Text("Top")
//                .font(.system(size: 40))
//                .background(.yellow)
//            Text("Top")
//                .font(.system(size: 40))
//                .background(.yellow)
//                .position(x:255,y: 127) // 절대 좌표
//            Text("Top")
//                .font(.system(size: 40))
//                .background(.yellow)
//                .offset(x:74,y:125) // 상대좌표
//            
//        }
        
        VStack {
            Text("First")
                .font(.system(size: 40))
                .background(.yellow)
            
            Text("SecondView")
                .font(.system(size: 40))
                .background(.yellow)
              
        } .offset(x:25,y: 125)
        
        
        
        
    }
}

#Preview {
    Zstack()
}
