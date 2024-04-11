//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        
        ScrollView(Axis.Set.vertical, showsIndicators: true) {
            ForEach(0..<50) {
                Text("Item #\($0)")
            }
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
