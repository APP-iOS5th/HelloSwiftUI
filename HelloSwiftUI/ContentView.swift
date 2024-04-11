import SwiftUI

struct ContentView: View {
    @State var myDegress: Double = 0.0
    @State var flag = false
    var body: some View {
        VStack{
            
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
                .animation(.default, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
                .animation(.easeIn, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
                .animation(.easeOut, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
                .animation(.easeInOut, value: flag)
            
            Button("Animate now") {
                withAnimation(.easeInOut(duration: 2.1)) {
                    flag.toggle()
                }
            }
            
            Slider(value: $myDegress, in: -180...180, step: 1)
                .padding()
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

