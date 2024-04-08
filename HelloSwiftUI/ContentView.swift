//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .trailing, spacing: 24){

            Text("Default padding of 16 points")
                .padding()
                .background(Color.orange)
            Text("Default padding of 45 points")
                .padding(45)
                .background(Color.orange)
            Text("Default padding of 3 points")
                .padding(3)
                .background(Color.orange)
            HStack(alignment: .top) {
                Text("Top padding only")
                    .padding(.top)
                    .background(Color.orange)
                Text("Trailing padding only")
                    .padding(.trailing)
                    .background(Color.orange)
                Text("Trailing padding only")
                    .padding(.bottom)
                    .background(Color.orange)
            }
            Text("Leading padding only")
                .padding(.leading)
                .background(Color.orange)
            Text("Top, Leading padding")
                .padding([.leading, .top])
                .background(Color.orange)
            Text("Top, Leading and Bottom padding")
                .padding([.leading, .top, .bottom])
                .background(Color.orange)
            
            
        }
    }
}
#Preview {
    ContentView()
}
