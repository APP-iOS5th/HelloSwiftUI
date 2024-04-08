//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Capsule().fill(Color.yellow)
            Circle().fill(Color.blue)
            Ellipse().fill(Color.brown)
            Rectangle().fill(Color.red)
            RoundedRectangle(cornerRadius: 20).fill(Color.green)
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
