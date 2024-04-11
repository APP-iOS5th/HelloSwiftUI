

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
     }
 }
#Preview {
    ContentView()
}
