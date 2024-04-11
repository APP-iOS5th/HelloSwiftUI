//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

class Species: Identifiable {
    let id = UUID()
    var name: String
    var classification: [Species]?
    
    init(name: String, classification: [Species]? = nil){
        self.name = name
        self.classification = classification
    }
}

struct ContentView: View {
    var Animals: [Species] = [
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
            OutlineGroup(Animals, id: \.id, children: \.classification) { creature in
                Text(creature.name)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
