//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View{
        VStack {
            Text("Turtle Rock")
                .padding()
                .contextMenu{
                    Button{
                        
                    }label:{
                        Label("Add to favorite",systemImage: "heart")
                    }
                    Button{
                    } label: {
                        Label("show in maps", systemImage: "mappin")
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
