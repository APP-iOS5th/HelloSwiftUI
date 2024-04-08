//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .position(x: 74, y: 125)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .offset(x: 74, y: 125)
            }
            VStack {
                Text ("First")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Text ("Second")
                    .font(.system(size: 40))
                    .background(Color.yellow)
            }
            .offset(x: 55, y: 66)
            
        }
    }
    
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */
