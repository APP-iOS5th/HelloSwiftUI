//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//



import SwiftUI

struct ContentView: View {
    @State var changeMe = true
    var body: some View {
        VStack{
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .foregroundColor(.green)
                .scaleEffect(changeMe ? 1.75 : 1)
                .animation(.default, value: changeMe)
                .onTapGesture {
                    changeMe.toggle()
                }
                        
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
