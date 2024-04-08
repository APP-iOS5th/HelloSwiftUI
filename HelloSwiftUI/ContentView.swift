//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            Text("Count")
                .font(.largeTitle)
                .padding()
            Spacer()
            Text("\(count)")
                .font(.largeTitle)
            HStack {
                Button("+") {
                    count += 1
                }
                .font(.title)
                .padding()
                
                Button("-") {
                    count -= 1
                }
                .font(.title)
                .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
/*
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 contentView()
 }
 }
 */
