
import SwiftUI
struct ContentView: View {
    @State var myDegrees: Double = 0.0
    @State var flag = false
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
                .animation(.easeInOut(duration: 2), value: flag)
            Button("Animate now"){
                flag.toggle()
            }
            Slider(value: $myDegrees, in: -180...180, step: 1)
                .padding()
            Text("The degree is \(Int(myDegrees))")
        }
    }
}

#Preview {
    ContentView()
}
