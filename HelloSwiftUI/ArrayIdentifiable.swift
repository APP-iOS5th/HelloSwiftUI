//
//  ArrayIdentifiable.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct ArrayIdentifiable: View {
    
    struct Animal: Identifiable {
        var id = UUID()
        var name: String
    }
    //Identifiable 해쉬어블한 id를 가짐. 따라서 id를 안가져도 되지만 UUID를 +해줌으로써 고유한 id를 가지게됨 (유니크한 값 ㅋ)
    
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
                ForEach(categories) { category in
                    Section(header: Text(category.category)) {
                        ForEach(category.animals){ animal in
                            Text(animal.name)
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    ArrayIdentifiable()
}
