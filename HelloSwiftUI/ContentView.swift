//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    struct Animal: Identifiable {
        var id = UUID()
        var name: String
    }
    
    struct AnimalCategory: Identifiable {
        var id = UUID()
        var category: String
        var animals: [Animal]
    }
    
    let categories = [
        AnimalCategory(category: "포유류", animals: [Animal(name: "고양이"),Animal(name: "강아지")]),
        AnimalCategory(category: "파충류", animals: [Animal(name: "거북이"),Animal(name: "도마뱀")]),
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(categories) { c in
                    Section(header: Text(c.category)) {
                        ForEach(c.animals) { animal in
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
