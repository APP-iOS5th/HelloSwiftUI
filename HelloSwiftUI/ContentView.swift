//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.blue)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.blue)
                    .position(x:255 ,y:127)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.blue)
                    .offset(x: 74, y: 124)
                
            }
            
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
