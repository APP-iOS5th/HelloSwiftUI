//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김영훈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Capsule().fill(Color.blue)
//        Circle().fill(Color.yellow)
//        Ellipse().fill(Color.brown)
//        Rectangle().fill(Color.red)
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).Color.green
        
        Spacer()
        Ellipse().fill(
            RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .top, startRadius: 10, endRadius: 65)
        )
        Spacer()
        Ellipse().fill(
            RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .center, startRadius: 10, endRadius: 65)
        )
        Spacer()
        Ellipse().fill(
        AngularGradient.init(gradient: Gradient(colors: [Color.blue, Color.yellow]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        )
        Spacer()
        Image("clock-solid")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 50)
    }
}

/*
 Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
 static var priveiw: some View {
    ContentView()
 }
}
*/

#Preview {
    ContentView()
}
