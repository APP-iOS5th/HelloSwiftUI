//
//  Padding.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack {
            Text("Default padding of 16 points")
                .padding()
                .background(.yellow)
            
            Text("Default padding of 45 points")
                .padding(45)
                .background(.yellow)
            
            Text("Default padding of 3 points")
                .padding(3)
                .background(.yellow)
            
            Text("Top Padding only")
                .padding(.top)
                .background(.yellow)
            
            Text("Traling Padding only")
                .padding(.trailing)
                .background(.yellow)
            
            Text("Bottom Padding only")
                .padding(.bottom)
                .background(.yellow)
            
            Text("Leading Padding only")
                .padding(.leading,45)
                .background(.yellow)
            
            Text("Top,Leading Padding only")
                .padding([.top,.leading],45)
                .background(.yellow)
            
            
            Text("Top,Leading and Bottom")
                .padding([.top,.leading,.bottom],45)
                .background(.yellow)
            
            
            
        }
    }
}

#Preview {
    Padding()
}
