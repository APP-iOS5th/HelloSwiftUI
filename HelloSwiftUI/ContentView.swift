//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
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
