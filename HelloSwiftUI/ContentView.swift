//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI


struct ContentView: View{
    
    @State var selectedView = 1
    
    var body: some View{
        VStack{
            //가로로 출력하는 그리드아이템은 3개의 기준으로 나뉘어짐 (3개로 설정했기때문)
            let gridItems = [GridItem(),GridItem(),GridItem()]
            ScrollView(Axis.Set.horizontal, showsIndicators: true ){
                LazyHGrid(rows: gridItems){
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
            ScrollView(Axis.Set.vertical, showsIndicators: true ){
                LazyVGrid(columns: gridItems){
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
                .font(.title)
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
