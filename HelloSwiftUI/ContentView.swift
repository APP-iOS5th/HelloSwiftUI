
import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView {
            Text("One")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("One")
                }
            Text("Two")
                .tabItem {
                    Image(systemName: "hare.fill")
                    Text("Two")
                }
            Text("Three")
                .tabItem {
                    Image(systemName: "tortoise.fill")
                    Text("Three")
                }
            Text("Four")
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("Four")
                }
        }
    }
}

#Preview {
    ContentView()
}
