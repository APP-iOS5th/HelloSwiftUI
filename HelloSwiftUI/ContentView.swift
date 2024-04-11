import SwiftUI

struct ContentView: View {
    @State var changeMe = true
    var body: some View {
        VStack {
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .foregroundStyle(.purple)
                .scaleEffect(changeMe ? 1.75 : 1)
                .animation(.default, value: changeMe)
                .frame(width: 200, height: 200)
            Toggle(isOn: $changeMe, label: {
                Text("Toggle me")
            })
        }
    }
}

#Preview {
    ContentView()
}
