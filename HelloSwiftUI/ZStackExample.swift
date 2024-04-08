//
//  ZStack.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
        VStack {
            ZStack {
                Text("Top")
                    .font(.system(size: 40))
                    .background(.yellow)
                Text("Top")
                    .font(.system(size: 40))
                    .background(.yellow)
                    .offset(x: 74, y: 125)
            }
        }
    }
}

#Preview {
    ZStackExample()
}
