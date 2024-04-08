//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by John Yun on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .trailing, spacing: 24) {
            Text("Default paddding of 16 points")
                .padding()
                .background(Color.cyan)
            Text("Default paddding of 45 points")
                .padding(45)
                .background(Color.cyan)
            Text("Default paddding of 3 points")
                .padding(3)
                .background(Color.cyan)
            Spacer()
            HStack (alignment: .bottom, spacing: 24) {
                Text("Top padding only")
                    .padding(.top)
                    .background(Color.cyan)
                Text("Trailing padding only")
                    .padding(.trailing)
                    .background(Color.cyan)
                Text("Bottom padding only")
                    .padding(.bottom)
                    .background(Color.cyan)
            }
            Spacer()
            Text("Leading padding only")
                .padding(.leading, 45)
                .background(Color.cyan)
            Text("Top, Leading padding")
                .padding([.top,.leading], 45)
                .background(Color.cyan)
            Text("Top, Leading and Bottom")
                .padding([.top,.leading, .bottom], 45)
                .background(Color.cyan)
        }
    }
}

#Preview {
    ContentView()
}
