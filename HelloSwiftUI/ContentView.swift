import SwiftUI

 struct ContentView: View {
     @State var myDegree: Double = 0.0
     @State var flag = false
    
     var body: some View {
         VStack {
             Text("Hello, world!")
                 .padding()
                 .rotationEffect(Angle(degrees: flag ? myDegree : 0))
                 .animation(.default, value: flag)
             Button("Animate now"){
                 flag.toggle()
             }
             Slider(value: $myDegree, in: -180...180, step: 1)
                 .padding()
             }
         
     }
 }
#Preview {
    ContentView()
}
