//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Cut Image")
            HStack {
                Image("gecko")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                Image("gecko")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .clipShape(Circle())
                Image("gecko")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .clipShape(Circle())
                    .shadow(color: .blue, radius: 10, x: 5, y:5)
            }
            .padding(.bottom, 30)
            Text("Border/Shadow Cutted Image")
            HStack {
                Image("gecko")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .opacity(0.2)
                Image("gecko")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .clipShape(Circle())
                    .shadow(color: .blue, radius: 10, x: 5, y:5)
                    .overlay {
                        Rectangle().stroke(.yellow, lineWidth: 5)
                    }
                Image("gecko")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .clipShape(Circle())
                    .shadow(color: .blue, radius: 10, x: 5, y:5)
                    .overlay {
                        Circle().stroke(.blue, lineWidth: 5)
                            .opacity(0.3)
                    }
                    
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

