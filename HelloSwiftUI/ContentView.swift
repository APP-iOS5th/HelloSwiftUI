//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack (alignment: .trailing, spacing: 24){
             
            Text("Default padding of 16 points")
                .padding()
                .background(Color.yellow)
            Text("Default padding of 45 points")
                .padding(45)
                .background(Color.yellow)
            Text("Default padding of 3 points")
                .padding(3)
                .background(Color.yellow)
            
            //뷰의 남은공간을 다 띄운다?
            Spacer()
            
            HStack (alignment: .bottom, spacing: 24){
                Text("Top padding only!")
                    .padding(.top) //위쪽 여백
                    .background(Color.yellow)
                Text("trailing padding only!")
                    .padding(.trailing) //오른쪽 여백
                    .background(Color.yellow)
                Text("Bottom padding only!")
                    .padding(.bottom) //아래쪽 여백
                    .background(Color.yellow)
            }
            Spacer(minLength: 100)
                Text("Leading padding only!")
                    .padding(.leading, 45) //왼쪽 여백
                    .background(Color.yellow)
            Spacer()
            Spacer()
                Text("Top, Leading padding")
                    .padding([.top, .leading], 45) //위쪽, 왼쪽 여백
                    .background(Color.yellow)
                Text("Top, Leading and Bottom")
                    .padding([.top, .leading, .bottom], 45) //위쪽,왼쪽,아래쪽 여백
                    .background(Color.yellow)
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
