//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var degree: Angle = .zero
    
    var body: some View {
        VStack {
            Text("angle = \(degree)")
            
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
//                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .rotationEffect(degree)
                .gesture(
                    RotateGesture()
                        .onChanged({ a in
                            degree = a.rotation
                        })
                    
//                    RotationGesture()
//                        .onChanged{ angle in
//                            degree = angle.degrees
//                        }
                    
                )
            
            
        }
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
