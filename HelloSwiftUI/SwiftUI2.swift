//
//  SwiftUI2.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct SwiftUI2: View {
    var body: some View {
        
        // MARK: Padding Example
        Text("Default padding of 16 points")
            .padding()
            .background(.yellow)
        Text("Default padding of 45 points")
            .padding(45)
            .background(.yellow)
        Text("Default padding of 3 points")
            .padding(3)
            .background(.yellow)
        
        Text("Top padding only")
            .padding(.top)
            .background(.yellow)
        Text("Trailing padding only")
            .padding(.trailing)
            .background(.yellow)
        Text("Leading padding only")
            .padding(.leading)
            .background(.yellow)
        Text("Bottom padding only")
            .padding(.bottom)
            .background(.yellow)
        Text("Bottom padding only 45 points")
            .padding(.bottom, 45)
            .background(.yellow)
        
        Text("Top and Leading padding of 45 points")
            .padding([.top, .leading], 45)
            .background(.yellow)
        Text("Top and Trailing and Bottom padding of 45 points")
            .padding([.top, .trailing, .bottom], 45)
            .background(.yellow)
    }
}

#Preview {
    SwiftUI2()
}
