//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var changeMe = true
    
    var body: some View {
        VStack {
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .foregroundColor(.red)
                .scaleEffect(changeMe ? 1.75 : 1)
                .animation(.default, value: changeMe)
                .onTapGesture {
                    changeMe.toggle()
                }
        }
    }
}

#Preview {
    ContentView()
}
