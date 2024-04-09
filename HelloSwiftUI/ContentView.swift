//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?


struct ContentView: View {
    @State private var degree = 0.0
    
    var body: some View {
        VStack  {
            Text("degree = \(degree)")
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit() //얘는 부모크기에 맞춰줌
               // .aspectRatio(contentMode: .fit) 얘는 비율에 fit, fill을 시키는 거고
                .frame(width: 200, height: 200)
                .rotationEffect(Angle.degrees(degree))
                .gesture(
                    RotationGesture()
                        .onChanged{ angle in
                            degree = angle.degrees
                        }
                )
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

