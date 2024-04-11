import SwiftUI

class Species : Identifiable {
    let id = UUID()
    var name: String
    var classification : [Species]?
    init(name: String, classification : [Species]? = nil) {

        // ? 이 있어서 nil이 가능한 것.
        //init에  nil이 있으면 clasification 선언이 없는 것 까지 만들어줌.
        //값이 없는 함수까지 init을 만들어줌. 생성자 없는 함수들까지 생성자가 만들어짐??
        //롸?
        
        
        self.name = name
        self.classification = classification
    }
}

struct ContentView: View {
    var animals : [Species] = [
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
                    OutlineGroup(animals, id: \.id, children: \.classification) { creature in Text(creature.name)}
        }
        .padding()
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
