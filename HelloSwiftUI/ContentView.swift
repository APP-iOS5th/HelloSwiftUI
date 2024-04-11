//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView (Axis.Set.vertical, showsIndicators: true){
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
