//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
   
    //토글을 누를때마다 true,false값 변경
    @State private var isOn = true
    
    @State private var value = 0
    
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in:0...1)
                .accentColor(.green)
                //.tint(.yellow)
            
            Stepper("값 \(value)", value: $value, in: 0...10)
            
            Toggle("Toggle message on/off", isOn: $isOn)
            Text("위")
            //폰트크기 크게
                .font(.largeTitle)
            //폰트 살짝 두껍게
                .fontWeight(.semibold)
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }.background(Color.purple)
            
            ZStack {
                Text("배경")
                Text("전경")
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("Button 1 click!")
            }
            Button(action: {
                print("button 2 click!")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
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
