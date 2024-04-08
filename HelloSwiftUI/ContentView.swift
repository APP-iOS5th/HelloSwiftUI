//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack{
            Text("Top")
                .font(.system(size: 40))
                .background(Color.yellow)
            Text("Top")
                .font(.system(size: 40))
                .background(Color.yellow)
                .offset(x: 74, y: 125)
            Text("Top")
                .font(.system(size: 40))
                .background(Color.yellow)
                .offset(x: 74, y: 125)
        }
        
       
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
