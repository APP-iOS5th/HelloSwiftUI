
import SwiftUI

struct FileView: View {
    var choice: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You chose = \(choice)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView(choice: "Head")) {
                Text("Send a message")
            }
            NavigationLink(destination: SeparateFile(passedData: "Tails")) {
                Text("Send a message")
            }
            .navigationTitle("Flip a Coin")
        }
    }
}

#Preview {
    ContentView()
}
