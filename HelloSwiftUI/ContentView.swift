import SwiftUI


struct ContentView: View {
    @State private var message = ""
    var body: some View {
        VStack {
            Text(message)
            Picker("Favorite Color", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            })
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) {newValue in
                switch newValue {
                case "happy": message = "Be happy and joyus"
                case "sad": message = "Life can be a struggle at times"
                case "bored": message = "Look for your purpose"
                default:
                    break
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
    
