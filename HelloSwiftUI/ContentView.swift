//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...1)
//                .accentColor(.green)
                .tint(.yellow)
            
            Stepper("값 \(value)", value: $value, in: 0...10)
            
            Toggle("Toggle message on/off", isOn: $isOn
            // 바로 텍스트 입력도 가능함(구조체의 convenience init 때문)
//                   , label: {Text("Toggle Example")}
            )
            
            Text("위")
//                .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                .padding()
                .font(.largeTitle)
                .fontWeight(.semibold)
//                .foregroundStyle(<#T##style: ShapeStyle##ShapeStyle#>)
            
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            .background(Color.purple)
            
            ZStack {
                Text("배경")
                Text("전경")
            }
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("button1 click")
            }
            
            Button(action: {
                print("button2 click")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        .background(Color.orange)
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
