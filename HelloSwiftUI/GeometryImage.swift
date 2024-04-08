//
//  GeometryImage.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct GeometryImage: View {
    var body: some View {
        
        VStack{
            Spacer()
            HStack{
                //이미지 크기 조정, 크롭(자르기, 원형)
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fill)
                
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fill)
                
                
                //이미지 그림자 효과
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .shadow(color: .green, radius: 46, x:90, y: 50)
                
                //이미지 테두리 오버레이
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Rectangle())
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .green, radius: 46, x:90, y: 50)
                    .overlay(Rectangle().stroke(.blue, lineWidth:  3))
                
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .green, radius: 46, x:90, y: 50)
                    .overlay(Circle().stroke(.blue, lineWidth: 3))
                
                
            }
            
            Spacer()
            
            HStack{
                
                //이미지 투명도 조절
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fill)
                    .opacity(0.5)
                
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fill)
                    .opacity(0.25)
                
            }
            Spacer()
            
            HStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("custom_brown"))
                
                let customColor = Color(red: 1, green: 0, blue: 0)
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(customColor)
                
                //전역상수 사용
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.myCustomColor)

            }
            
            Spacer()
        }
        
    }
}

#Preview {
    GeometryImage()
}
