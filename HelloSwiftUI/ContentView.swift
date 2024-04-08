//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            //            Capsule().fill(Color.yellow)
            //            Circle().fill(Color.blue)
            //            Ellipse().fill(Color.brown)
            //            Rectangle().fill(Color.red)
            //            RoundedRectangle(cornerRadius: 20).fill(Color.green)
            
            Spacer()
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .yellow]),
                        center: .top,
                        startRadius: 10,
                        endRadius: 65
            ))
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .yellow]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 65
            ))
            Ellipse().fill(
                AngularGradient(
                    gradient: Gradient(colors: [.blue, .yellow]),
                        center: .center
            ))
        }
    }
}

#Preview {
    ContentView()
}
/*
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 contentView()
 }
 }
 */
