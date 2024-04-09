import SwiftUI

struct ContentView: View {
    @State var messageOne = ""
    @State var messageTwo = ""
    
    var body: some View {
        VStack {
            Form {
                Text("This is the first Form")
                TextField("Type here", text: $messageOne)
            }
            .frame(height: 150)
            Form {
                Text("This is the first Form")
                TextField("Type here", text: $messageTwo)
            }
            .frame(height: 150)
            List {
                Text("Form #1 \(messageOne)")
                Text("Form #2 \(messageTwo)")
            }
        }
    }
}


#Preview {
    ContentView()
}

