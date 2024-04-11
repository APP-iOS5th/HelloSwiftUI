

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
    @State var selectedView = 1
    
    var body: some View {
        VStack {
            HStack {
                Button("1") {
                    selectedView = 1
                }
                Button("2") {
                    selectedView = 2
                }
                Button("3") {
                    selectedView = 3
                }
                Button("4") {
                    selectedView = 4
                }
                Button("5") {
                    selectedView = 5
                }
                Button("6") {
                    selectedView = 6
                }
                
            }
            TabView (selection: $selectedView) {
                Text("One")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("One")
                    }.tag(1)
                //태그가 꼬리표로 연결시켜준다
                Text("Two")
                    .tabItem {
                        Image(systemName: "hare.fill")
                        Text("Two")
                    }.tag(2)
                Text("Three")
                    .tabItem {
                        Image(systemName: "tortoise.fill")
                        Text("Three")
                    }.tag(3)
                
                Text("Four")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("Four")
                    }.tag(4)
                
                Text("Five")
                    .tabItem {
                        Image(systemName: "internaldrive.fill")
                        Text("Five")
                    }.tag(5)
                Text("Six")
                    .tabItem {
                        Image(systemName: "cloud.drizzle.fill")
                        Text("Six")
                    }.tag(6)
            }
            .tabViewStyle(.page)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
        .accentColor(Color(hex: "#3E3AFF"))
    }
}
#Preview {
    ContentView()
}
