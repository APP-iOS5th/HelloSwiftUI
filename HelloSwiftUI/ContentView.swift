//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Yachae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .foregroundColor(Color.customColor1)
        
            // 지역상수 사용
            let customColor2 = Color(red: 1, green: 0, blue: 0)
            Image(systemName: "heart.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .foregroundColor(customColor2)
            
            // 전역상수 사용
            Image(systemName: "heart.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .foregroundColor(Color.customColor2)
        }
    }
}


#Preview {
    ContentView()
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
