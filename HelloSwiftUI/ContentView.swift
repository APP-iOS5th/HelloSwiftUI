//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .padding()
                .contextMenu {
                    Button {
                        
                    } label: {
                     Label("Add to Fabvorite", systemImage: "heart")
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
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
