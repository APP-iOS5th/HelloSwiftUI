import SwiftUI


 struct FileView: View {
     @Binding var choice: String
     var body: some View {
         HStack {
             Spacer()
             VStack {
                 Spacer()
                 TextField("Type here:", text: $choice)
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
             TextField("Type here:", text: $message)
             NavigationLink(destination: FileView(choice: $message)) {
                 Text("Heads")
             }
             NavigationLink(destination: SeperateFile(passedData: "Tails")) {
                 Text("Tails")
             }
             .navigationTitle("Flip a Coin")
         }
     }
 }
#Preview {
    ContentView()
}
