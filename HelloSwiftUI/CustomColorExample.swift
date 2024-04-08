//
//  CustomColorExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct CustomColorExample: View {
    var body: some View {
        VStack {
            // Asset Color scheme 사용
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color("custom_brown"))
            
            // 지역상수 사용
            let customColor = Color(red: 1, green: 0, blue: 0)
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(customColor)
            
            // 전역상수 사용
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color.myCustomColor)

        }
    }
}

#Preview {
    CustomColorExample()
}
