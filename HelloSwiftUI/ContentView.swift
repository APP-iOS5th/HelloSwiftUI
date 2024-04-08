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
            Label("Clock", systemImage: "clock.circle")
                .font(.title)
                .padding(.bottom)
            
            Label("Calendar", systemImage: "calendar")
                .padding(.bottom)
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
