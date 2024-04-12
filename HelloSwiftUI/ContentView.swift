//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader{
            geometry in
            VStack{
                Text("Width = \(geometry.size.width)")
                    .foregroundStyle(.white)
                Text("Height = \(geometry.size.height)")
                    .foregroundStyle(.white)
            }
        }
        .background(Color.red)
//        .ignoresSafeArea()
    }
}



#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
