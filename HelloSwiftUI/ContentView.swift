//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text ("First")
                .font(.system(size: 40))
                .background(Color.yellow)
            Text ("Second View")
                .font(.system(size: 40))
                .background(Color.yellow)
        }
        .offset(x: 25, y: 155)
    }
}

#Preview {
    ContentView()
}
