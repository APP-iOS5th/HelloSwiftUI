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
        AnimalCategory(category: "포유류", animals: [Animal(name:"고양이"),Animal(name: "강아지")]),  AnimalCategory(category: "파충류", animals: [Animal(name:"거북이"),Animal(name: "도마뱀")]),
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(categories, id: \.id) { category in
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

