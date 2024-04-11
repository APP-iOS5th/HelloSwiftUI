

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        let rgbValue = UInt32(hex, radix: 16)
        let r = Double((rgbValue! & 0xFF0000) >> 16) / 255
        let g = Double((rgbValue! & 0x00FF00) >> 8) / 255
        let b = Double(rgbValue! & 0x0000FF) / 255
        self.init(red: r, green: g, blue: b)
    }
}


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
            Text("Five")
                .tabItem {
                    Image(systemName: "internaldrive.fill")
                    Text("Five")
                }
            Text("Six")
                .tabItem {
                    Image(systemName: "cloud.drizzle.fill")
                    Text("Six")
                }
            
        }
        .accentColor(Color(hex: "#3E3AFF"))
    }
}
#Preview {
    ContentView()
}
