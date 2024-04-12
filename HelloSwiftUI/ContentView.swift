
import SwiftUI
struct ContentView: View {
    @State var myDegrees: Double = -180.0
    @State var flag = false
    var body: some View {
        VStack {
            Text("This Text view pushes the GeometryReader down")
            HStack {
                Text("Pushes it to the right")
                GeometryReader { geometry in
                    VStack {
                        Text("Width = \(geometry.size.width)")
                        Divider()
                        Text("Local x origin = \(geometry.frame(in: .local).origin.x)")
                        Text("Local y origin = \(geometry.frame(in: .local).origin.y)")
                        Divider()
                        Text("Global x origin = \(geometry.frame(in: .global).origin.x)")
                        Text("Global y origin = \(geometry.frame(in: .global).origin.y)")
                    }
                }
                .background(Color.yellow)
        //        .ignoresSafeArea()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
