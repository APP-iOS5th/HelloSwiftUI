//
//  StructExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct StructExample: View {
    
    struct Animal: Identifiable {
        var id: UUID = UUID()
        var name: String
    }
    
    struct AnimalCategory: Identifiable {
        var id: UUID = UUID()
        var category: String
        var animals: [Animal]
    }
    
    private let categories: [AnimalCategory] = [
        AnimalCategory(category: "포유류", animals: [Animal(name: "고양이"), Animal(name: "강아지")]),
        AnimalCategory(category: "파충류", animals: [Animal(name: "거북이"), Animal(name: "도마뱀")])
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(categories) { category in
                    Section(header: Text(category.category)) {
                        ForEach(category.animals) { animal in
                            Text("animal Name > \(animal.name)")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    StructExample()
}
