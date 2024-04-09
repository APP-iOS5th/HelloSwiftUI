//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI

struct ContentView: View {
    var myArray = ["cat","dog","turtle","ferret","parrot","goldfish","lizard",
    "canary","tarantula","hamster"]
    var body: some View{
        VStack{
            List {
                Text("Cat")
                Text("Dog")
                Text("Bird")
                Text("Reptile")
                Text("Fish")

            }
            //forEach 는 Foundation 에 정의된거/  ForEach 는 View를 뱉는 SwiftUI 구조
            List {
                ForEach(1...25, id:\.self){index in
                    Text("Animal #\(index)")
                }
            }
            List {
                ForEach(0...myArray.count - 1 , id: \.self){ index in
                Text(myArray[index])}
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
