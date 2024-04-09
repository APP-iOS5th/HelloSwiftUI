import SwiftUI

struct ContentView: View {
    @State var message = ""

    var body: some View {
        VStack {
            Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
                Text("Apple")
            })

            Text(message).padding()

            Menu("Options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete...", action: deleteFile)
            }
        }
    }

    func openFile() {
        message = "Open chosen"
    }

    func findFile() {
        message = "Find chosen"
    }

    func deleteFile() {
        message = "Delete chosen"
    }

}


#Preview {
    ContentView()
}

