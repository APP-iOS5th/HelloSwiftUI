import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Label("Text", systemImage: "clock.circle").font(.title)
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
