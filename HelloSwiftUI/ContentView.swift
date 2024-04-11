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
            let gridItems = [GridItem(.flexible(minimum: 25, maximum: 450)), GridItem(.flexible(minimum: 25, maximum: 450)), GridItem(.fixed(120))] //.fixed()를 줘서 간격줄여줌 넓이기도 가능
            ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                LazyHGrid(rows: gridItems) { //가로 무한대로 뻗어나갈수 있는데 제한
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
            ScrollView(Axis.Set.vertical, showsIndicators: true) {
                LazyVGrid(columns: gridItems) { //세로 무한대로 뻗어나갈수 있는데 제한
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
                    Image(systemName: "11.square")
                    Image(systemName: "12.square")
                    Image(systemName: "13.square")
                    Image(systemName: "14.square")
                    Image(systemName: "15.square")
                    Image(systemName: "16.square")
                    Image(systemName: "17.square")
                    Image(systemName: "18.square")
                    Image(systemName: "19.square")
                    Image(systemName: "20.square")
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
