//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SungWoonLee on 4/8/24.
//

import SwiftUI
extension Color{
    static let myColor = Color( red:1.0, green: 0.0, blue: 0.5)
}

struct ContentView: View {
    var body: some View {
        VStack  {
            //이미지 크기 조정, 크롭(자르기, 원형)
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width:250, height:250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width:250, height:250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            // 이미지 그림자 효과
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width:250, height:250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .shadow(color: .red, radius: 10, x:0, y:0)
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width:250, height:250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                .shadow(color: .green, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:90, y:90)
//            
            
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width:250, height:250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
//            
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width:250, height:250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                .shadow(color: .green, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:90, y:90)
            Image(systemName: "heart.fill")
                            .font(.system(size: 150))
                            .foregroundStyle(Color.colorUser) // asset에 만든 색상으로 아이콘 색상 변경.
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                            .foregroundStyle(Color.colorUser)
            
         
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                            .foregroundStyle(Color.myColor)
        }
    }
}
#Preview {
    ContentView()
}

/*
 
 Swift 3.0 이전 프리뷰
 struct ContentView)Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 */
