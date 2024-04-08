//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            ZStack{
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
