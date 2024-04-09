//
//  Alert_ActionSheet.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct MagnificationGestureView: View {
    
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    
    
    var body: some View {
        VStack {
            
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue)
                .gesture(
                    //확대축소 제스처
                    MagnificationGesture()
                        .onChanged { amount in
                            let _ = print("onChanged \(amount) ")
                            tempValue = amount - 1
                        }
                        .onEnded { amount in
                            //원복을 위해서 주석
//                            finalValue += tempValue
                            
                            let _ = print("onEnded \(amount) ")
                            tempValue = 0
                        }
                )
        }//VStack
    }
}

#Preview {
    MagnificationGestureView()
}
