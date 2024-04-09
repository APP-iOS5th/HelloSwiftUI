//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Trutle Rock")
                .padding()
                .contextMenu { //길게눌러야함
                    Button {
                        
                    } label: {
                        Label("Add to Favorite", systemImage: "heart")
                    }
                    Button {
                        
                    } label: {
                        Label("Show in Maps", systemImage: "mappin")
                    }
                }

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
