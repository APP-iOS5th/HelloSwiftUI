//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    struct Animal: Identifiable {
        let id = UUID()
        let name: String
    }
    
    
    struct AnimalCategory: Identifiable {
        let id = UUID()
        var category: String
        var animals: [Animal]
    }
    
    let categories = [
    AnimalCategory(category: "포유류", animals: [Animal(name: "고양이"), Animal(name: "강아지")]),
    AnimalCategory(category: "파충류", animals: [Animal(name: "거북이"), Animal(name: "도마뱀")]),
    AnimalCategory(category: "파충류", animals: [Animal(name: "거북이"), Animal(name: "도마뱀"), Animal(name: "악어")])
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(categories, id: \.id) {category in
                    Section(header: Text(category.category)) {
                        ForEach(category.animals) { animal in
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
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
