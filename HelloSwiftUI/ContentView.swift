//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            //폰트 크기로 이미지 크기 조정 가능
            Spacer()
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            
            Image("apple")
                .resizable()
                .aspectRatio(contentMode: .fit) //fit 은 딱 맞게 , fill은 넘쳐도 된다..?
                .frame(width: 150, height: 50)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
/*
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 contentView()
 }
 }
 */
