//
//  Shape.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        Capsule().fill(.yellow)
        Capsule().fill(.blue)
        Ellipse().fill(.brown)
        Rectangle().fill(.red)
        RoundedRectangle(cornerRadius: 25).fill(.green)
        
        Spacer()
        
        Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .top, startRadius: 10, endRadius: 65))
        
        Spacer()
        
        Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .center, startRadius: 10, endRadius: 65))
        
        Spacer()
        
        Ellipse().fill(
            AngularGradient(
                gradient: Gradient(colors:[.blue,.yellow]),
                center: .center
            ))
        
        
        HStack {
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            
            Spacer()
            
            Image(systemName: "arrow.right")
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .frame(width: 150, height: 50)
        }
    }
}

/*aspectRatio: aspectRatio는 뷰의 가로 세로 비율을 지정하는 데 사용됩니다. 예를 들어, aspectRatio(16/9, contentMode: .fit)를 사용하면 뷰의 너비와 높이 비율을 16:9로 설정할 수 있습니다. 이것은 뷰의 크기와 콘텐츠의 비율을 조정하는 데 유용합니다.

scaledToFit: scaledToFit은 뷰의 콘텐츠가 뷰의 프레임 내에 맞도록 크기를 조정합니다. 만약 콘텐츠가 뷰의 프레임보다 크다면, scaledToFit은 콘텐츠를 축소하여 프레임에 맞춥니다. 그러나 콘텐츠가 프레임보다 작으면 크기를 확대하지 않습니다.

scaledToFill: scaledToFill은 뷰의 콘텐츠를 뷰의 프레임에 꽉 차도록 확대 또는 축소합니다. 이것은 콘텐츠가 뷰의 프레임보다 작을 때 뷰를 채우는 데 유용합니다. 하지만 이 경우 콘텐츠가 잘릴 수 있습니다.

따라서, aspectRatio는 비율을 조정하고, scaledToFit은 콘텐츠를 프레임에 맞추며, scaledToFill은 콘텐츠를 프레임에 꽉 채우는 데 사용됩니다.*/

#Preview {
    Shape()
}
