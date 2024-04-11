
import SwiftUI
struct ContentView: View {
    @State var changeMe = false
    var body: some View {
        VStack {
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .foregroundStyle(.red)
                .scaleEffect(changeMe ? 1.75 : 1)
                .animation(.default, value: changeMe)
                .onTapGesture {
                    changeMe.toggle()
                }
        }
    }
}

#Preview {
    ContentView()
}
