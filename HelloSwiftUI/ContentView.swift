//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack {
            // sf symbol pic usage
//            Label("what time is it?",
//                  systemImage: "clock.circle").font(.title)
//            Label{
//                Text("No modifiers")
//            } icon: {
//                Image("clock-solid")
//                    .resizable()
//                    .frame(width:20.0, height: 20.0)
//            }
            //도형
//            //capsule(알약모양 = 타원형)
//            Capsule().fill(Color.yellow)
//            Circle().fill(Color.brown)
//            Ellipse().fill(Color.pink)
//            Rectangle().fill(Color.red)
//            RoundedRectangle(cornerRadius: 50).fill(Color.green)
//            Capsule().fill(Color.yellow)
//            
//            Spacer()
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(colors:[.blue,.yellow]), center: .top, startRadius: 10, endRadius: 65))
//            Spacer()
//
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(colors:[.blue,.yellow]), center: .center, startRadius: 10, endRadius: 65))
//            Spacer()

            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors:[.blue,.yellow]), center: .top))
            Spacer()
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("",size: 50))
            Spacer()
            Image("clock-solid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150,height: 50)
            //fit과 fill의 차이 알기
        }
    }
}

#Preview {
    ContentView()
}


/*
 swift 3.0 이전 preview
struct contentview_previews : PreviewProvider {
    static var previews: some view{
        ContentView()
    }
 }
*/
