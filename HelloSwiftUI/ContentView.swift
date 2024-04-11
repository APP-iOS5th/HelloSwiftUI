
import SwiftUI

struct FileView: View {
    @Binding var choice: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here: ", text: $choice)
                    .padding()
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    @State var message = ""
    var body: some View {
        NavigationStack {
            TextField("Type here: ", text: $message)
                .padding()
            NavigationLink(destination: FileView(choice: $message)) {
                Text("Send a message")
            }
            NavigationLink(destination: SeparateFile(passedData: $message)) {
                Text("Send a message")
            }
            .navigationTitle("Flip a Coin")
        }
    }
}

#Preview {
    ContentView()
}
