//
//  ImageView.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Label("Text",systemImage: "clock.circle")
                .font(.title)
            
            Label {
                Text("No modifiers")
            } icon: {
                Image("clock-solid")
                    .resizable()
                    .frame(width: 20,height: 20)
            }
            
        }
    }
}

#Preview {
    ImageView()
}
