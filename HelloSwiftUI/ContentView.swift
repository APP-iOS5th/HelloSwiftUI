import SwiftUI

struct ContentView: View {
    @State var myDegress: Double = 0.0
    @State var flag = false
    
    var body: some View {
        VStack {
           Text("Hello, world")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegress : 0))
            Button("Animate now") {
                flag.toggle()
            }
            Text("\(myDegress)°")
                .padding()
            Slider(value: $myDegress, in: -100...100, step: 1)
        }
    }
}

#Preview {
    ContentView()
}
