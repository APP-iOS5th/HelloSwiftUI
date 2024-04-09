//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

@available(iOS 15.0, *)
struct ContentView: View {
  
    
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .padding()
                .contextMenu {
                    Button {
                        print("favorite!")
                    }label: {
                        Label("Add to Faborite", systemImage: "heart")
                    }
                    Button {
                        print("pin")
                    }label: {
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
