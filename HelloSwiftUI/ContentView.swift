
import SwiftUI
struct ContentView: View {
    @State var myDegrees: Double = -180.0
    @State var flag = false
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Width: \(geometry.size.width)")
                Text("Height: \(geometry.size.height)")
            }
        }
        .background(Color.yellow)
//        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
