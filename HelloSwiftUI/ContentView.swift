//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

class Species: Identifiable {
    let id = UUID()
    var name: String
    var classification: [Species]? //재귀적으로 불릴 수 있다.(자기자신을 부름)
    init(name: String, classification: [Species]? = nil) {
        self.name = name
        self.classification = classification
    }
}

struct ContentView: View {
    var animals: [Species] = [
        Species(name: "포유류", classification: [
            Species(name: "개", classification: [
                Species(name: "Poodle"),
                Species(name: "Collie"),
                Species(name: "St. Bernard"),
            ]),
            Species(name: "고양이"),
            Species(name: "코끼리"),
            Species(name: "고래"),
        ]),
        Species(name: "조류", classification: [
            Species(name: "Canary"),
            Species(name: "Parakeet"),
            Species(name: "Eagle"),
        ]),
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

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
