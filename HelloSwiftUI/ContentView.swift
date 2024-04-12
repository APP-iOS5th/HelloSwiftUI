import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This Text view pushes the GeometryReader down")
            HStack {
                Text("Pushes to the right")
                GeometryReader { geometry in
                    VStack {
                        Text("minX = \(geometry.frame(in: .local).minX)")
                        Text("midX = \(geometry.frame(in: .local).midX)")
                        Text("maxX = \(geometry.frame(in: .local).maxX)")
                        Divider()
                        Text("minY = \(geometry.frame(in: .local).minY)")
                        Text("midY = \(geometry.frame(in: .local).midY)")
                        Text("maxY = \(geometry.frame(in: .local).maxY)")
                    }
                }
                .background(Color.yellow)
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}
