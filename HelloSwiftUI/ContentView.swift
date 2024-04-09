import SwiftUI

struct ContentView: View {
    var myArray = ["Cat", "Dog", "Turtle", "Ferret", "Parrot", "Goldfish", "Lizard", "Conary", "Tarantula", "Hamster"]
    
    var body: some View {
        VStack {
            List {
                Text("Cat")
                Text("Dog")
                Text("Bird")
                Text("Reptile")
                Text("Finsh")
            }
            List {
                ForEach(1...25, id: \.self) { index in
                        Text("Aminal #\(index)")
                }
            }
            List {
                ForEach(0...myArray.count - 1, id: \.self) { index in
                    Text(myArray[index])
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

