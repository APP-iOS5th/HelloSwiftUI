import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This Text view pushes the GeometryReader down")
            HStack {
                Text("Pushes to the right")
                GeometryReader { geometry in
                    VStack {
                        Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                        Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
                        Divider()
                        Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
                        Text("Global Y origin = \(geometry.frame(in: .global).origin.y)")
                    }
                }
                .background(Color.yellow)
                .ignoresSafeArea()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

