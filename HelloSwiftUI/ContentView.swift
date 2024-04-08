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
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            Image("clock-solid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 50)
        }
    }
}

#Preview {
    ContentView()
}
