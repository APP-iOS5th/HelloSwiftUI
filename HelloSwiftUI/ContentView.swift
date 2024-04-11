//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: true) {
            ForEach(0..<50){
                Text("Item #\($0)")
            }
        }
    }
    
}



#Preview
{
    ContentView()
}
