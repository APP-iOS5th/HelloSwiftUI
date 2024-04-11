
import SwiftUI
class ShareString: ObservableObject{
    @Published var message = ""
}
struct FileView: View {
    @EnvironmentObject var choice: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here:", text: $choice.message)
                    .padding()
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    @StateObject var showMe = ShareString()
    var body: some View {
        NavigationStack {
            TextField("Type here: ", text: $showMe.message)
                .padding()
            NavigationLink(destination: FileView()) {
                Text("Send a message")
            }
            NavigationLink(destination: SeparateFile()) {
                Text("Send a message")
            }
            .navigationTitle("Flip a Coin")
        }
        .environmentObject(showMe)
    }
}

#Preview {
    ContentView()
}
