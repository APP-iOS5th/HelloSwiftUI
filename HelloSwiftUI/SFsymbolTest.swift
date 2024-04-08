//
//  SFsymbolTest.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

struct SFsymbolTest: View {
    var body: some View {
        VStack {
            Label("Text", systemImage: "clock.circle")
            Label{
                Text("No modifire")
            } icon: { 
                Image(systemName: "clock.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
        }
            
    }
}

#Preview {
    SFsymbolTest()
}
