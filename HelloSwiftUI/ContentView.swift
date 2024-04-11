//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

class Species: Identifiable {
    let id = UUID()
    var name: String
    var classification: [Species]?
    
    init(name: String, classification: [Species]? = nil) {
        self.name = name
        self.classification = classification
    }
}

struct ContentView: View {
    var animals: [Species] = [
        Species(name: "포유류", classification: [
            Species(name: "개", classification: [
                Species(name: "푸들"),
                Species(name: "진도"),
                Species(name: "비숑")
            ]),
            Species(name: "고양이"),
            Species(name: "코끼리"),
            Species(name: "고래")
        ]),
        Species(name: "조류", classification: [
            Species(name: "독수리"),
            Species(name: "참새"),
            Species(name: "비둘기")
        ])
    ]
    
    var body: some View {
        List {
            OutlineGroup(animals, id: \.id, children: \.classification) { creature in
                Text(creature.name)
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
