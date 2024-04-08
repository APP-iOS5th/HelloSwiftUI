//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Capsule().fill(Color.indigo)
//            Circle().fill(Color.pink)
//            Ellipse().fill(Color.purple)
//            Rectangle().fill(Color.secondary)
//            RoundedRectangle(cornerRadius:  31).fill(Color.green)
            
            Spacer()
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors:[.blue,.yellow]),
                    center: .top,
                    startRadius: 10,
                    endRadius: 65
                ))
            Spacer()
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors:[.blue,.yellow]),
                    center: .center,
                    startRadius: 10,
                    endRadius: 65
                ))
            Spacer()
            Ellipse().fill(
                AngularGradient(
                    gradient: Gradient(colors:[.blue,.yellow]),
                    center: .center
                ))
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
