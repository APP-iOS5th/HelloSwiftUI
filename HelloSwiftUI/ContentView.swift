import SwiftUI

 struct ContentView: View {
     @State var changeMe = true
     var body: some View {
         
             Image(systemName: "tortoise.fill")
             .font(.system(size: 100))
             .foregroundStyle(.blue)
             .scaleEffect(changeMe ? 1.75 : 1)
             .animation(.default, value: changeMe)
             .onTapGesture {
                 changeMe.toggle()
             }
         
     }
 }
#Preview {
    ContentView()
}
