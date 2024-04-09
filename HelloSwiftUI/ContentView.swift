//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI
//UUID 범용고유 식별자
struct ContentView: View {
    struct Animal : Identifiable{
        var id = UUID()
        var name: String
    }
    
    struct AnimalCategory: Identifiable{
        var id = UUID()
        var category: String
        var animals: [Animal]
    }
    //연관관계가있는 데이터를 이중배열 처럼 사용
    let categories = [
        AnimalCategory(category: "mammals", animals: [Animal(name: "cat"),Animal(name: "dog")]),
        AnimalCategory(category: "mammals", animals: [Animal(name: "turtle"),Animal(name: "lizard")])
        
    ]
    var body: some View{
        VStack{
            List{
                ForEach(categories, id: \.id) { c in
                    Section(header: Text(c.category)){
                        ForEach(c.animals, id: \.id){ animal in
                            Text(animal.name)
                        }
                        
                    }
                }
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
