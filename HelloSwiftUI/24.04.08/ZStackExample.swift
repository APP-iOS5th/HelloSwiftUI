//
//  ZStack.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
//        VStack {
//            ZStack {
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                    .position(x: 255, y: 127)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                    .offset(x: 74, y: 125)
//            }
//        }
        
        VStack {
            Text("First")
                .font(.system(size: 40))
                .background(.yellow)
            Text("Second View")
                .font(.system(size: 40))
                .background(.yellow)
        }
        .offset(x: 25, y:125)
    }
}

#Preview {
    ZStackExample()
}
