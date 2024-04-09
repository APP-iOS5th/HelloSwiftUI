import SwiftUI

struct ContentView: View {
    var myArray = ["cat","dog","turtle","bird","reptile","fish"]
    var body: some View {
        VStack {
            List {
                Text("Cat")
                Text("Dog")
                Text("Bird")
                Text("Reptile")
                Text("Fish")
            }
            List {
                ForEach(1...25, id: \.self) {index in
                Text("Animal #\(index)")
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

