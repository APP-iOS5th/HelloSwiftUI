//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Text("Turtle Rock")
            .padding()
            .contextMenu {
                Button("Add to Favorite", systemImage: "heart") {}
                Button("Show in Maps", systemImage: "mappin") {}
            }
        }
    }
}

#Preview {
    ContentView()
}
