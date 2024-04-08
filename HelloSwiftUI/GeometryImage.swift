//
//  GeometryImage.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

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
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .green, radius: 46, x:90, y: 50)
                    .overlay(Rectangle().stroke(.blue))
                
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .green, radius: 46, x:90, y: 50)
                    .overlay(Circle().stroke(.blue, lineWidth: 8))
                
                
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
        }
        
    }
}

#Preview {
    GeometryImage()
}
