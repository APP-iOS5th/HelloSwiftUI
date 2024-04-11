//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var move = true
    var body: some View {
        VStack {
            Text("Move to Text")
                .offset(x: move ? 100 : 0 , y: move ? 100 : 0)
                //.position(x: move ? 100 : 0 , y: move ? 100 : 0)
                .animation(.default, value: move)
                //.frame(width: 300, height: 300)
            Toggle(isOn: $move, label: {
                Text("Toggle me")
            })
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
