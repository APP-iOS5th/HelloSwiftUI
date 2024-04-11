
import SwiftUI
struct ContentView: View {
    @State var move = true
    var body: some View {
        VStack {
            Text("A Text")
                .position(x: move ? 200 : 0, y: move ? 200 : 0)
                .animation(.default, value: move)
                .frame(width: 200, height: 200)
                .padding()
            Toggle(isOn: $move, label: {
                    Text("Toggle Me")
                })
        }
    }
}

#Preview {
    ContentView()
}
