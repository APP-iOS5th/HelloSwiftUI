//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI

struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        ScrollView (Axis.Set.vertical, showsIndicators: true) {
            ForEach(0..<50){
                //가운데 들어가서 좀 안이쁘네(그래서 indicator 위에 추가함)
                Text("Item #\($0)")
            }
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
