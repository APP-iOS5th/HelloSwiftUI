//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 24) { //spacing: 간격
            
            Text("Default padding of 16 point")
                .padding()
                .background(Color.yellow)
            
            Text("Default padding of 45 point")
                .padding(45)
                .background(Color.yellow)
            
            Text("Default padding of 3 point")
                .padding(3)
                .background(Color.yellow)
            
            Text("Trailing padding only")
                .padding(.trailing)
                .background(Color.yellow)
            Text("Bottom padding only")
                .padding(.bottom)
                .background(Color.yellow)
            Text("Leading padding only")
                .padding(.leading, 45)
                .background(Color.yellow)
            
            Text("Top, Leading padding")
                .padding([.top, .leading], 45)
                .background(Color.yellow)
            Text("Topm, Leading and Bottom padding")
                .padding([.top, .leading, .bottom], 45)
                .background(Color.yellow)
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
