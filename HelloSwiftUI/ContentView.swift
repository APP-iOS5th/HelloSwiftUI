//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.6)
}

struct ContentView: View {
    var body: some View {
        VStack {
            
            //Asset Color scheme 사용
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color("custom_brown"))
            
            //지역변수 사용
            let customColor = Color(red: 1, green: 0, blue: 0)
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(customColor)
            
            //전역변수 사용
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.myCustomColor)
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
