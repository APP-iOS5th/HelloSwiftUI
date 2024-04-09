//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    struct Animal: Identifiable{
        var id = UUID()
        var name: String
    }
    
    struct AnimalCategory: Identifiable {
        var id = UUID()
        var category: String
        var animals: [Animal]
    }
    
    let categories = [
        AnimalCategory(category: "포유류", animals: [Animal(name:"고양이"),Animal(name:"강아지")]),
        AnimalCategory(category: "파충류", animals: [Animal(name:"거북이"),Animal(name:"도마뱀")]),
    ]
    
    
    var body: some View {
        VStack {
            List {
                //카테고리 에 따라 섹션을 나눈다 (id: \.id 는 UUID Hashable하고 유니크한 값이기때문에 생략가능)
                ForEach(categories, id: \.id) { c in
                    Section(header: Text(c.category)){
                        //카테고리에 맞는 리스트값을 출력
                        ForEach(c.animals, id: \.id ) { animal in
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
