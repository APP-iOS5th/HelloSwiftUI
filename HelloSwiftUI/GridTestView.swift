//
//  GridView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct GridTestView: View {
    var body: some View {
        VStack {
            let gridItems = [GridItem(.fixed(25)),GridItem(.fixed(25)),GridItem(.fixed(25))]
            
            ScrollView(.horizontal, showsIndicators: true) {
                LazyHGrid(rows: gridItems) {
                    Image(systemName: "1.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                    Image(systemName: "4.circle")
                    Image(systemName: "5.circle")
                    Image(systemName: "6.circle")
                    Image(systemName: "7.circle")
                    Image(systemName: "8.circle")
                    Image(systemName: "9.circle")
                    Image(systemName: "10.circle")
                }
                .font(.largeTitle)
            }
            
            ScrollView(.vertical, showsIndicators: true) {
                LazyVGrid(columns: gridItems) {
                    Image(systemName: "1.square")
                    Image(systemName: "2.square")
                    Image(systemName: "3.square")
                    Image(systemName: "4.square")
                    Image(systemName: "5.square")
                    Image(systemName: "6.square")
                    Image(systemName: "7.square")
                    Image(systemName: "8.square")
                    Image(systemName: "9.square")
                    Image(systemName: "10.square")
                }
                .font(.largeTitle)
            }
            
        }
    }
}

#Preview {
    GridTestView()
}
