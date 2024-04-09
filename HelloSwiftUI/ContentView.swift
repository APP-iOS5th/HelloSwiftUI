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

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .padding()
                .contextMenu {
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
