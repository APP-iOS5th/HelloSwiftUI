//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Yachae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
         Image("뿅망치섬")
//                .resizable()
                .frame(width: 300, height: 300)
                .aspectRatio(contentMode: .fill)
                .clipped()
                .opacity(0.5)
            Image("고양이")
                   .resizable()
                   .frame(width: 300, height: 300)
                   .aspectRatio(contentMode: .fill)
                   .opacity(0.8)
            Image("뿅망치섬")
//                   .resizable()
                   .frame(width: 300, height: 300)
                   .aspectRatio(contentMode: .fill)
                   .clipped()
                   .shadow(color: .customColor1, radius: 50, x:0, y:0)
                   .overlay(Rectangle().stroke(Color.customColor2, lineWidth: 6))
            Image("고양이")
                   .resizable()
                   .frame(width: 300, height: 300)
                   .aspectRatio(contentMode: .fill)
                   .opacity(0.8)
        }
    }
}


#Preview {
    ContentView()
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
